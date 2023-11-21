import '../booking_ongoing_page/widgets/listrectangle_item_widget.dart';
import 'package:buzz/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:buzz/cancel_booking_bottomsheet/cancel_booking_bottomsheet.dart';

class BookingOngoingPage extends StatefulWidget {
  const BookingOngoingPage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _BookingOngoingPageState createState() => _BookingOngoingPageState();
  onTapCancelbooking(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => const CancelBookingBottomsheet(),
        isScrollControlled: true);
  }

  onTapViewticket(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.viewTicketScreen);
  }
}

class _BookingOngoingPageState extends State<BookingOngoingPage>
    with AutomaticKeepAliveClientMixin<BookingOngoingPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    super.build(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                          padding: getPadding(left: 24, top: 30, right: 24),
                          child: ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(20));
                              },
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return ListrectangleItemWidget(
                                    onTapCancelbooking: () {
                                  onTapCancelbooking(context);
                                }, onTapViewticket: () {
                                  onTapViewticket(context);
                                });
                              }))
                    ]))));
  }

  onTapCancelbooking(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => const CancelBookingBottomsheet(),
        isScrollControlled: true);
  }

  onTapViewticket(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.viewTicketScreen);
  }
}
