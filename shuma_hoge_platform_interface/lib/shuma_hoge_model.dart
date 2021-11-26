class ShumaHogeModel {

  ShumaHogeModel({required this.myMessage});

  final String myMessage;

  Map<String, String> toMap() {
    return {
      'myMessage': myMessage,
    };
  }

  static ShumaHogeModel fromMap(Map<String, String> map) {
    return ShumaHogeModel(
      myMessage: map['myMessage']!,
    );
  }

}
