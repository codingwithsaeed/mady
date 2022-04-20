import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mady/core/utils/consts.dart';
import 'package:mady/core/x/x_widgets.dart';
import 'package:mady/di/injection.dart';
import 'package:mady/features/reserve_offer/domain/entities/reserve/reserve.dart';
import 'package:mady/features/reserve_offer/presentation/bloc/reserve_offer_bloc.dart';
import 'package:mady/features/reserve_offer/presentation/pages/reserve_details_page.dart';

class ReservedOffersPage extends StatelessWidget {
  const ReservedOffersPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: BlocProvider<ReserveOfferBloc>(
      create: (context) =>
          getIt<ReserveOfferBloc>()..add(const ReserveOfferEvent.getReserves()),
      child: BlocBuilder<ReserveOfferBloc, ReserveOfferState>(
        builder: (context, state) {
          return state.when(
              initial: () => buildText(''),
              loading: () => buildLoading(),
              loaded: (offer, isReserved) => buildText(''),
              error: (error) => buildError(context, error),
              reservered: (reserves) => reserves.isEmpty ? buildText('هیچ رزروی نداشته اید') :  buildBody(context, reserves));
        },
      ),
    ));
  }

  Widget buildError(BuildContext context, String message) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(message, style: Theme.of(context).textTheme.headline6),
            const SizedBox(height: 10),
            TextButton(
              child: const Text('تلاش مجدد'),
              onPressed: () => context
                  .read<ReserveOfferBloc>()
                  .add(const ReserveOfferEvent.getReserves()),
            ),
          ],
        ),
      );

  Future<void> getReserves(BuildContext context) async {
    BlocProvider.of<ReserveOfferBloc>(context)
        .add(const ReserveOfferEvent.getReserves());
  }

  Widget buildText(String text) => Center(
        child: Text(
          text,
          style: const TextStyle(fontSize: 20.0),
        ),
      );

  Widget buildBody(BuildContext context, List<Reserve> list) =>
      RefreshIndicator(
          child: ListView.builder(
            itemCount: list.length,
            itemBuilder: (context, index) => ReserveListItem(
              reserve: list[index],
              onTap: () => Navigator.pushNamed(context, ReserveDetailsPage.id,
                  arguments: list[index]),
            ),
          ),
          onRefresh: () async => await getReserves(context));

  Widget buildLoading() => Center(
        child: CircularProgressIndicator(color: Colors.purple.shade800),
      );
}

class ReserveListItem extends StatelessWidget {
  final Reserve reserve;
  final VoidCallback onTap;

  const ReserveListItem({Key? key, required this.reserve, required this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 4.0, left: 4.0, right: 4.0),
      child: Card(
        elevation: 5,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: ExpansionTile(
          tilePadding: const EdgeInsets.symmetric(horizontal: 8.0),
          expandedCrossAxisAlignment: CrossAxisAlignment.stretch,
          childrenPadding: const EdgeInsets.only(
              left: 16.0, right: 16.0, bottom: 16.0, top: 0),
          title: Row(
            children: [
              Expanded(
                flex: 5,
                child: Text(
                  reserve.content,
                  style: const TextStyle(fontSize: 18.0),
                ),
              ),
              const SizedBox(width: 10),
              const Text(
                'تعداد:',
                style: TextStyle(fontSize: 18.0),
              ),
              const SizedBox(width: 10),
              Text(
                reserve.count,
                style: const TextStyle(fontSize: 20.0),
              ),
            ],
          ),
          children: [
            Row(
              children: [
                const Text(
                  'شماره رسید:',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(width: 10),
                Text(
                  reserve.receipt,
                  style: const TextStyle(
                    fontSize: 18.0,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                const Text(
                  'وضعیت:',
                  style: TextStyle(fontSize: 18.0),
                ),
                const SizedBox(width: 10),
                Text(
                  reserveStatusTitle[int.parse(reserve.status)],
                  style: TextStyle(
                      fontSize: 18.0,
                      color: reserve.isNotDelivered
                          ? Colors.yellow.shade800
                          : reserve.isDelivered
                              ? Colors.green.shade800
                              : Colors.red.shade800),
                ),
              ],
            ),
            XButton(
              title: 'جزییات',
              onPressed: onTap,
              color: Colors.purple.shade800,
              fontSize: 16,
              radius: 15,
              padding: 0,
              innerPadding: 10,
            ),
          ],
        ),
      ),
    );
  }
}

extension BetterReserve on Reserve {
  bool get isNotDelivered => status == '0';
  bool get isDelivered => status == '1';
}
