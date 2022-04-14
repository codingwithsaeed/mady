import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mady/core/utils/show_snackbar.dart';
import 'package:mady/core/x/widgets/x_circle_logo.dart';
import 'package:mady/di/injection.dart';
import 'package:mady/features/offers/domain/entities/category_offers/category_offers.dart';
import 'package:mady/features/offers/domain/entities/offer/offer.dart';
import 'package:mady/features/offers/presentation/bloc/offer_bloc.dart';
import 'package:mady/features/reserve_offer/presentation/pages/reserve_offer_page.dart';

class OffersPage extends StatelessWidget {
  static const id = 'OffersPage';
  const OffersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) =>
            getIt<OfferBloc>()..add(const OfferEvent.getOffers()),
        child: buildBody(context),
      );

  Widget buildBody(BuildContext context) => RefreshIndicator(
        onRefresh: () async => context
            .read<OfferBloc>()
            .add(const OfferEvent.getOffers()),
        child: BlocConsumer<OfferBloc, OfferState>(
          builder: blocBuilder,
          listener: blocListener,
        ),
      );

  Widget blocBuilder(BuildContext context, OfferState state) {
    return state.when(
      initial: () => const SizedBox(),
      loading: () => buildLoading(),
      loaded: (list) => buildList(context, list),
      error: (message) => buildError(message),
    );
  }

  Widget buildError(String message) => Center(
        child: Text(message),
      );

  Widget buildLoading() => Center(
        child: CircularProgressIndicator(
          color: Colors.purple.shade800,
        ),
      );

  void blocListener(BuildContext context, OfferState state) {
    state.whenOrNull(
      loaded: (list) => log(list.toString()),
      error: (message) => showSnackbar(context, message: message),
    );
  }

  Widget buildList(BuildContext context, List<CategoryOffers> list) =>
      ListView.builder(
        itemBuilder: ((_, index) => Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 4.0, vertical: 0.0),
              child: CategoryItem(
                category: list[index],
                onTap: (offerIndex) async {
                  final result = await Navigator.pushNamed(
                    context,
                    ReserveOfferPage.id,
                    arguments: list[index].data[offerIndex],
                  );
                  if (result != null && result as bool) {
                    context
                        .read<OfferBloc>()
                        .add(const OfferEvent.getOffers());
                  }
                },
              ),
            )),
        itemCount: list.length,
      );
}

class CategoryItem extends StatelessWidget {
  final CategoryOffers category;
  final void Function(int index) onTap;
  const CategoryItem({
    Key? key,
    required this.onTap,
    required this.category,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 220,
      child: Card(
        color: Colors.white.withOpacity(0.9),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                category.name,
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.purple.shade800,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Flexible(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => OfferItem(
                  offer: category.data[index],
                  onTap: onTap,
                  index: index,
                ),
                itemCount: category.data.length,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class OfferItem extends StatelessWidget {
  final void Function(int index) onTap;
  final int index;
  const OfferItem({
    Key? key,
    required this.offer,
    required this.onTap,
    required this.index,
  }) : super(key: key);

  final Offer offer;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 170,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GestureDetector(
          onTap: () => onTap(index),
          child: Column(
            children: [
              XCircleLogo(
                radius: 50,
                logo: offer.picture,
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                offer.content,
                style: const TextStyle(
                    color: Colors.black,
                    fontSize: 17,
                    fontWeight: FontWeight.w400),
                maxLines: 1,
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
