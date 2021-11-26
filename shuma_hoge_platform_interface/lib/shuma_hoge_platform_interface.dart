import 'dart:async';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'method_channel_shuma_hoge.dart';

import 'shuma_hoge_model.dart';
export 'shuma_hoge_model.dart';

abstract class ShumaHogePlatform extends PlatformInterface {

  ShumaHogePlatform() : super(token: _token);
  static final Object _token = Object();

  static ShumaHogePlatform _instance = MethodChannelShumaHoge();
  static ShumaHogePlatform get instance => _instance;

  static set instance(ShumaHogePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<ShumaHogeModel> hoge() {
    throw UnimplementedError('hoge() has not been implemented.');
  }

}
