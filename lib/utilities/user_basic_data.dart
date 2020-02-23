import 'package:shared_preferences/shared_preferences.dart';

class UserBasicData {
  // parameters
  final int age;
  final double height;
  final double weight;
  final String gender;

  // constructor
  UserBasicData({this.age, this.height, this.weight, this.gender});

  // json to object
  UserBasicData.fromJson(Map<String, dynamic> json)
      : age = json['age'],
        height = json['height'],
        weight = json['weight'],
        gender = json['gender'];

  // object to json
  Map<String, dynamic> toJson() => {
        'age': age,
        'height': height,
        'weight': weight,
        'gender': gender,
      };

  // get from shared preferences
  static Future<UserBasicData> getUserBasicData() async {
    // create shared preferences instance
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // get user basic data from shared preferences instance
    UserBasicData userData = new UserBasicData(
        age: prefs.getInt('age'),
        height: prefs.getDouble('height'),
        weight: prefs.getDouble('weight'),
        gender: prefs.getString('gender'));

    // return user basic data
    return userData;
  }

  // save to shared preferences
  static saveUserBasicData({UserBasicData userData}) async {
    // create shared preferences instance
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // set user basic data into shared preferences file
    await prefs.setInt('age', userData.age);
    await prefs.setDouble('height', userData.height);
    await prefs.setDouble('weight', userData.weight);
    await prefs.setString('gender', userData.gender);
  }
}
