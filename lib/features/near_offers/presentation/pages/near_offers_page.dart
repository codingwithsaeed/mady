import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:mady/core/utils/consts.dart';
import 'package:mady/core/utils/show_snackbar.dart';
import 'package:mady/core/x/x_widgets.dart';
import 'package:mady/di/injection.dart';
import 'package:mady/features/near_offers/presentation/cubit/near_offers_cubit.dart';
import 'package:mady/features/near_offers/presentation/cubit/near_offers_state.dart';
import 'package:mady/features/near_offers/presentation/pages/select_address_page.dart';
import 'package:mady/features/offers/domain/entities/offer/offer.dart';
import 'package:mady/features/reserve_offer/presentation/pages/reserve_offer_page.dart';

class NearOffersPage extends StatelessWidget {
  const NearOffersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider<NearOffersCubit>(
      create: (context) => getIt<NearOffersCubit>(),
      child: const OffersPageImpl(),
    );
  }
}

class OffersPageImpl extends StatefulWidget {
  const OffersPageImpl({Key? key}) : super(key: key);

  @override
  State<OffersPageImpl> createState() => _OffersPageImplState();
}

class _OffersPageImplState extends State<OffersPageImpl>
    with AutomaticKeepAliveClientMixin {
  Future<void> refreshData() =>
      BlocProvider.of<NearOffersCubit>(context).getOffers();

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();
    refreshData();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
      body: BlocConsumer<NearOffersCubit, NearOffersState>(
        listener: cubitListener,
        builder: cubitBuilder,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final user = await context.read<NearOffersCubit>().getUser(userKey);
          final result = await Navigator.pushNamed(
              context, SellectAddressPage.id,
              arguments: user);
          if (result != null && result is LatLng) {
            await context.read<NearOffersCubit>().updateUserLocation(
                  result.latitude.toString(),
                  result.longitude.toString(),
                );
          }
        },
        child: const Icon(Icons.location_on_sharp),
      ),
    );
  }

  Widget cubitBuilder(BuildContext context, NearOffersState state) =>
      state.when(
          initial: () => buildEmptyBody(''),
          loading: () => buildLoading(),
          loaded: (offers) => offers.isEmpty
              ? buildEmptyBody('آفری در ۱۰ کیلومتری شما وجود ندارد')
              : buildOffersList(context, offers),
          error: (error) => buildError(error));

  void cubitListener(context, state) {
    if (state is Error) showSnackbar(context, message: state.message);
  }

  Widget buildError(String message) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message, style: Theme.of(context).textTheme.headline6),
            const SizedBox(height: 10),
            TextButton(
              child: const Text('تلاش مجدد'),
              onPressed: () => context.read<NearOffersCubit>().getOffers(),
            ),
          ],
        ),
      );

  Widget buildOffersList(BuildContext context, List<Offer> offers) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: RefreshIndicator(
        onRefresh: () async => refreshData(),
        child: GridView.builder(
          itemCount: offers.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 2.0, mainAxisSpacing: 2.0),
          itemBuilder: (BuildContext context, int index) => NearOfferItem(
            onTap: () => Navigator.pushNamed(context, ReserveOfferPage.id,
                arguments: offers[index]),
            offer: offers[index],
          ),
        ),
      ),
    );
  }

  Widget buildLoading() => Center(
        child: CircularProgressIndicator(
          color: Colors.purple.shade800,
        ),
      );

  Widget buildEmptyBody(String text) =>
      Center(child: Text(text, style: const TextStyle(fontSize: 20.0)));
}

class NearOfferItem extends StatelessWidget {
  final Offer offer;
  final VoidCallback onTap;
  const NearOfferItem({
    required this.offer,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            XCircleLogo(
              logo: offer.picture,
              radius: 60,
            ),
            const SizedBox(
              height: 10,
            ),
            Text(offer.content)
          ],
        ),
      ),
    );
  }
}
