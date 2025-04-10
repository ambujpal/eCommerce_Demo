import 'package:get_storage/get_storage.dart';

class CommonFunctions {
  static GetStorage instansce = GetStorage();
// write local storage data
  static void writeData({String key = "", dynamic data}) {
    instansce.write(key, data);
  }

// read data from local storage
  static dynamic readData(String key) {
    return instansce.read(key);
  }
}
