import 'dart:async';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:emed/screens/patients/auth/signup/view/signup_patient.dart';
import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';
import 'package:flutter_screen_lock/flutter_screen_lock.dart';

class BaseView<T> extends StatefulWidget {
  final T? viewModel;
  final Widget Function(BuildContext context, T value)? onPageBuilder;
  final Function(T model)? onModelReady;
  final VoidCallback? onDispose;

  const BaseView({
    Key? key,
    required this.viewModel,
    required this.onPageBuilder,
    this.onModelReady,
    this.onDispose,
  }) : super(key: key);

  @override
  State<BaseView> createState() => _BaseViewState();
}

class _BaseViewState extends State<BaseView> with WidgetsBindingObserver {
  var subscription;
  var internetStatus;

  int _timercounter = 0;
  Timer? _timer;

  void _increnmentTimerCounter(Timer t) {
    print("TImerCounter is $_timercounter");
    if (_timercounter >= 10) {
      debugPrint("Lock");
      GetStorage().write("isLock", true);
      debugPrint(
        GetStorage().read("isLock").toString(),
      );
      _timer!.cancel();
    }
    _timercounter += 1;
    setState(() {});
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    // _timer == Timer(const Duration(milliseconds: 1), () {});
    if (state == AppLifecycleState.resumed) {
      _timercounter = 0;
      debugPrint("Resume  :$_timercounter");
      _timer!.cancel();
    }
    if (state == AppLifecycleState.inactive) {}
    if (state == AppLifecycleState.paused) {
      debugPrint("Background");
      _timer = Timer.periodic(
        Duration(seconds: 1),
        _increnmentTimerCounter,
      );
    }
    if (state == AppLifecycleState.detached) {
      debugPrint("Tugadi");
      GetStorage().write("isLock", true);
      debugPrint(
        GetStorage().read("isLock"),
      );
    }
  }

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
    GetStorage().write("isLock", false);
    subscription = Connectivity()
        .onConnectivityChanged
        .listen((ConnectivityResult result) {
      setState(() {
        debugPrint(result.toString());
        internetStatus = result;
      });
    });
    if (widget.onModelReady != null) widget.onModelReady!(widget.viewModel);
  }

  @override
  Widget build(BuildContext context) {
    return returnPage();
  }

  Widget returnPage() {
    if (internetStatus == ConnectivityResult.none) {
      return Scaffold(appBar: AppBar(title: const Text('No internet')));
    } else {
      if (!GetStorage().read("isLock")) {
        return widget.onPageBuilder!(context, widget.viewModel);
      } else {
        return ScreenLock(
          correctString: '1234',
          canCancel: false,
          didUnlocked: () {
            Navigator.pushAndRemoveUntil(
              context,
              MaterialPageRoute(builder: (context) => PatientsSignUp()),
              (route) => false,
            );
          },
          didConfirmed: (pin) {
            setState(() {
              GetStorage().write("isLock", false);
              _timercounter = 0;
            });
          },
        );
      }
    }
  }

  @override
  void dispose() {
    if (widget.onDispose != null) widget.onDispose!();
    _timer!.cancel();
    WidgetsBinding.instance.removeObserver(this);
    super.dispose();
  }
}
