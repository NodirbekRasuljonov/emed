import 'package:emed/core/extensions/size_extension.dart';
import 'package:emed/screens/patients/auth/signup/widgets/my_elevatedButton.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_calendar/calendar.dart';

class MyHomoPage extends StatelessWidget {
  const MyHomoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: context.h,
      width: context.h,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: context.h * 0.5,
              width: context.h * 0.5,
            ),
            SfCalendar(
              view: CalendarView.month,
            ),
            Container(
              height: context.h * 0.5,
              width: context.h * 0.5,
            ),
            const SizedBox(
              height: 30.0,
            ),
            MyElevatedBUtton(
              
                title: 'Add new appointment',
                route: '/addappointment',
                context: context),
            const SizedBox(
              height: 10.0,
            )
          ],
        ),
      ),
    );
  }
    

}