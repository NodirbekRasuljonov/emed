import 'package:emed/core/constants/size_const.dart';
import 'package:emed/core/extensions/size_extension.dart';
import 'package:emed/screens/patients/main/view/pages/Doctors/cubit/doctors_cubit.dart';
import 'package:emed/screens/patients/main/view/pages/Doctors/state/doctors_state.dart';
import 'package:emed/screens/patients/mock/doctors_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DoctorsPage extends StatelessWidget {
  DoctorsPage({Key? key}) : super(key: key);

  List<DoctorsModel> lst = DoctorsData.data;

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DoctorsCubit, DoctorsState>(
      builder: (context, state) {
        return Scaffold(
          appBar: doctorsAppBar(),
          body: Container(
            height: context.h,
            width: context.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Text(
                    'Recommended Doctors for you',
                    style: TextStyle(
                      fontSize: SizeConst.medium,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return Card(
                        child: ListTile(
                          onTap: () {
                            Navigator.pushNamed(context, '/doctorinfo',
                                arguments: lst[index]);
                          },
                          leading: CircleAvatar(
                            radius: 24.0,
                            backgroundImage: AssetImage(
                              lst[index].imgurl,
                            ),
                          ),
                          title: Text(lst[index].name),
                          trailing: Icon(Icons.chevron_right_outlined),
                        ),
                      );
                    },
                    itemCount: lst.length,
                  ),
                )
              ],
            ),
          ),
        );
      },
      listener: (context, state) {},
    );
  }

  AppBar doctorsAppBar() {
    return AppBar(
      elevation: 0.0,
      backgroundColor: Colors.transparent,
      leading: IconButton(
        icon: Image.asset('assets/images/profile_icon.png'),
        onPressed: () {},
      ),
      title: Image.asset('assets/images/logo.png'),
      centerTitle: true,
      actions: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: IconButton(
            onPressed: () {},
            icon: Image.asset(
              'assets/images/doctorsaction.png',
            ),
          ),
        )
      ],
    );
  }
}
