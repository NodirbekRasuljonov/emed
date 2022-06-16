import 'package:emed/core/constants/color_const.dart';
import 'package:emed/core/constants/size_const.dart';
import 'package:emed/core/extensions/size_extension.dart';
import 'package:emed/screens/patients/mock/doctors_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

class DoctorsInfoPage extends StatelessWidget {
  DoctorsInfoPage({Key? key, required DoctorsModel info}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 100.0,
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const Text(
          'Nodirbek Rasuljonov',
        ),
        titleTextStyle: TextStyle(
            color: ColorsConst.textColor,
            fontWeight: FontWeight.w600,
            fontSize: SizeConst.medium),
        centerTitle: true,
        leading: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0),
          child: Row(
            children: [
              const Icon(
                Icons.chevron_left_outlined,
                color: Colors.blue,
                size: 30.0,
              ),
              Text(
                'Back',
                style:
                    TextStyle(color: Colors.blue, fontSize: SizeConst.medium),
              )
            ],
          ),
        ),
      ),
      body: Container(
        height: context.h,
        width: context.h,
        child: Column(
          children: [
            SizedBox(
              height: context.h * 0.3,
              width: context.h,
              child: Stack(
                children: [
                  Positioned(
                    left: context.h * 0.127,
                    right: context.h * 0.127,
                    child: const CircleAvatar(
                      radius: 55.0,
                      backgroundImage: AssetImage(
                        'assets/images/profile.jpg',
                      ),
                    ),
                  ),
                  Positioned(
                    left: context.h * 0.15,
                    right: context.h * 0.14,
                    top: context.h * 0.16,
                    child: SizedBox(
                      height: context.h * 0.05,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Nodirbek Rasuljonov',
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.w600),
                          ),
                          Text('Pediatric Pulmonolog')
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                height: context.h,
                width: context.h,
                margin: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    title(title: 'Place of work'),
                    littlespace(),
                    description(text: 'Pediatric Hospital No:4'),
                    bigspace(),
                    title(title: 'Work Location'),
                    littlespace(),
                    description(
                      text:
                          'Shaykhontokhur District, st Zulfiyaxonim, 18 Tashkent, 100128',
                    ),
                    bigspace(),
                    title(title: 'Available Time'),
                    littlespace(),
                    description(text: 'Monday-Saturday'),
                    littlespace(),
                    description(text: '10:00-16:00'),
                    bigspace(),
                    title(title: 'Rating'),
                    littlespace(),
                    RatingBar.builder(
                      initialRating: 3,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemBuilder: (context, _) =>const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {
                      },
                    ),
                    bigspace(),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: ColorsConst.kPrimaryColor,
                          fixedSize: const Size(336, 54)
                        ),
                        onPressed: () {
                          Navigator.pushNamed(context, '/doctorapp');
                        },
                        child: const Text(
                          "Book an appointment",
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  SizedBox bigspace() {
    return const SizedBox(
      height: 30.0,
    );
  }

  SizedBox littlespace() {
    return const SizedBox(
      height: 10.0,
    );
  }

  Text description({required String text}) => Text(
        text,
        style: TextStyle(
            fontSize: SizeConst.medium,
            color: ColorsConst.textColor,
            fontWeight: FontWeight.w600),
      );

  Text title({required String title}) {
    return Text(
      title,
      style: TextStyle(
        color: ColorsConst.textColor.withOpacity(0.8),
      ),
    );
  }
}
