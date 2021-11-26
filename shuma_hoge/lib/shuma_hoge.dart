import 'dart:async';

import 'package:shuma_hoge_platform_interface/shuma_hoge_platform_interface.dart';
export 'package:shuma_hoge_platform_interface/shuma_hoge_platform_interface.dart'
  show
      ShumaHogeModel;

class ShumaHoge {

  ShumaHoge();

  static ShumaHogePlatform get _platform {
    return ShumaHogePlatform.instance;
  }

  Future<ShumaHogeModel> get hoge async => await _platform.hoge();

}
