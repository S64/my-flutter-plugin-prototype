import 'dart:async';
import 'package:flutter/services.dart';
import 'package:shuma_hoge_platform_interface/shuma_hoge_platform_interface.dart';

class MethodChannelShumaHoge extends ShumaHogePlatform {

  MethodChannel channel = const MethodChannel('jp.co.kiganix.flutterplugins/shuma_hoge');

  @override
  Future<ShumaHogeModel> hoge() async {
    return ShumaHogeModel.fromMap(
      Map<String, String>.from(
          (await channel.invokeMethod('getHoge'))!
      ),
    );
  }

}
