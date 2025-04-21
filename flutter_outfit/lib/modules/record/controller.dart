import 'package:flutter_outfit/http/api_record.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class RecordController extends GetxController {
  RecordController();

  var apiRecord = ApiRecord();

  _initData() {
    update(["record"]);
    initRecords();
  }

  var records = [].obs;

  void initRecords() async {
    final prefs = await SharedPreferences.getInstance();
    var result = await apiRecord.getRecords({
      'userId': prefs.getInt('id'),
    });
    records.value = result ?? [];
  }

  void onTap() {}

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
