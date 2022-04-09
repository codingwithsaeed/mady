import 'dart:developer';


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mady/core/utils/show_snackbar.dart';
import 'package:mady/core/x/widgets/x_circle_logo.dart';
import 'package:mady/di/injection.dart';
import 'package:mady/features/offers/domain/entities/category_offers/category_offers.dart';
import 'package:mady/features/offers/presentation/bloc/offer_bloc.dart';

class OffersPage extends StatelessWidget {
  static const id = 'OffersPage';
  const OffersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) =>
          getIt<OfferBloc>()..add(const OfferEvent.getOffers('32', '51')),
      child: buildBody(context),
    );
  }

  Widget buildBody(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async =>
          context.read<OfferBloc>().add(const OfferEvent.getOffers('32', '51')),
      child: BlocConsumer<OfferBloc, OfferState>(
          builder: (context, state) => state.when(
                initial: () => const SizedBox(),
                loading: () => buildLoading(),
                loaded: (list) => loadList(context, list),
                error: (message) => buildError(message),
              ),
          listener: blocListener),
    );
  }

  Center buildError(String message) => Center(
        child: Text(message),
      );

  Center buildLoading() => Center(
        child: CircularProgressIndicator(
          color: Colors.purple.shade800,
        ),
      );

  void blocListener(BuildContext context, OfferState state) {
    state.when(
      initial: () {},
      loading: () {},
      loaded: (list) => log(list.toString()),
      error: (message) => showSnackbar(context, message: message),
    );
  }

  loadList(BuildContext context, List<CategoryOffers> list) {
    return ListView.builder(
      itemBuilder: ((context, index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 0.0),
            child: SizedBox(
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
                        list[index].name,
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
                        itemBuilder: (context, innerIndex) => SizedBox(
                          width: 170,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: [
                                XCircleLogo(
                                  radius: 50,
                                  logo: list[index].data[innerIndex].picture,
                                ),
                                const SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  list[index].data[innerIndex].content,
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
                        itemCount: list[index].data.length,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )),
      itemCount: list.length,
    );
  }
}
