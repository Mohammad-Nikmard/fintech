import 'package:fintech/constatns/color_constants.dart';
import 'package:fintech/model/notification.dart';
import 'package:fintech/util/extensions/theme_extension.dart';
import 'package:fintech/util/mediaquery_handler.dart';
import 'package:fintech/util/notifications_enum.dart';
import 'package:fintech/widget/custom_appbar.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({
    super.key,
    required this.mediaQuery,
  });
  final MediaQueryHandler mediaQuery;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.background,
      body: SafeArea(
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 80),
              child: CustomScrollView(
                slivers: [
                  const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 20, left: 30),
                      child: Text(
                        'Today',
                        style: TextStyle(
                          fontFamily: 'SSB',
                          fontSize: 19,
                          color: AppColor.blackColor,
                        ),
                      ),
                    ),
                  ),
                  const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 10),
                      child: Divider(
                        thickness: 1.5,
                        color: Color(0xfff1f2f3),
                      ),
                    ),
                  ),
                  _TodayNotifList(
                    mediaQuery: mediaQuery,
                  ),
                  const SliverToBoxAdapter(
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 20, left: 30, top: 20),
                      child: Text(
                        'This Week',
                        style: TextStyle(
                          fontFamily: 'SSB',
                          fontSize: 19,
                          color: AppColor.blackColor,
                        ),
                      ),
                    ),
                  ),
                  _ThisWeekNotifList(
                    mediaQuery: mediaQuery,
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10, right: 30, left: 30),
              child: CustomAppbar(
                title: 'Notifications',
                leftIcon: 'icon_arrow_left',
                rightIcon: 'icon_notification',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _TodayNotifList extends StatefulWidget {
  const _TodayNotifList({
    required this.mediaQuery,
  });
  final MediaQueryHandler mediaQuery;

  @override
  State<_TodayNotifList> createState() => _TodayNotifListState();
}

class _TodayNotifListState extends State<_TodayNotifList> {
  List<Notifications> notifs = [
    Notifications(
      'David John',
      '560.00',
      '',
      NotificationEnum.receivedPayment,
    ),
    Notifications(
      'Avian Rizky',
      '369.00',
      '',
      NotificationEnum.paymentRequest,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return notifWidget(
            mediaQuery: widget.mediaQuery,
            notifs[index].type,
            amount: notifs[index].amount,
            senderOrneedy: notifs[index].senderOrNeedy,
            picture: notifs[index].picture,
          );
        },
        childCount: notifs.length,
      ),
    );
  }
}

class _ThisWeekNotifList extends StatefulWidget {
  const _ThisWeekNotifList({
    required this.mediaQuery,
  });
  final MediaQueryHandler mediaQuery;

  @override
  State<_ThisWeekNotifList> createState() => __ThisWeekNotifListState();
}

class __ThisWeekNotifListState extends State<_ThisWeekNotifList> {
  List<Notifications> notifs = [
    Notifications(
      '',
      '',
      '',
      NotificationEnum.warning,
    ),
    Notifications(
      'David John',
      '560.00',
      '',
      NotificationEnum.receivedPayment,
    ),
    Notifications(
      'David John',
      '469.00',
      '',
      NotificationEnum.paymentRequest,
    ),
    Notifications(
      'David John',
      '960.00',
      '',
      NotificationEnum.receivedPayment,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          return notifWidget(
            mediaQuery: widget.mediaQuery,
            notifs[index].type,
            amount: notifs[index].amount,
            senderOrneedy: notifs[index].senderOrNeedy,
            picture: notifs[index].picture,
          );
        },
        childCount: notifs.length,
      ),
    );
  }
}