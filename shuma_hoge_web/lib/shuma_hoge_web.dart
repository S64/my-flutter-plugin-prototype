import 'package:shuma_hoge_platform_interface/shuma_hoge_platform_interface.dart';

class ShumaHogePlugin extends ShumaHogePlatform {

  @override
  Future<ShumaHogeModel> hoge() async {
    return ShumaHogeModel(myMessage: "Hello from Web!");
  }

}
