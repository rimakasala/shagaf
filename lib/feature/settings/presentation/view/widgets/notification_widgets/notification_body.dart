import 'package:flutter/material.dart';
import 'package:shagaf/feature/settings/presentation/view/widgets/notification_widgets/notification_appbar.dart';
import 'package:shagaf/feature/settings/presentation/view/widgets/notification_widgets/notification_listview.dart';
class NotificationBody extends StatelessWidget {
  const NotificationBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const NotificationAppbar(),
        NotificationListview()

      ],
    );
  }
}