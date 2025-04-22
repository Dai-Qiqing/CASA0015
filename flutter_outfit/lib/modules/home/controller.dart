import 'package:flutter/material.dart';
import 'package:flutter_outfit/index.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  HomeController();

  _initData() {
    update(["home"]);
    initRecommendations();
  }

  void onTap() {}

  var apiOutfit = ApiOutfit();

  // @override
  // void onInit() {
  //   super.onInit();
  // }

  @override
  void onReady() {
    super.onReady();
    _initData();
  }

  final searchController = TextEditingController();

  // 检索关键字
  var searchText = ''.obs;

  // 推荐搭配索引
  var recommendationIndex = 0.obs;
  // 推荐搭配列表
  var recommendations = [].obs;

  void initRecommendations() async {
    var result = await apiOutfit.getRecommendations();
    recommendations.value = result ?? [];
  }

  void onSearchForTap() async {
    var result = await apiOutfit.getOutfits({
      'key': searchController.text,
    });
    recommendations.value = result ?? [];
  }

  void onRecorderTap() {
    Get.toNamed(AppRoutes.RECORDER);
  }

  void onRecommendationItemTap(item) async {
    await apiOutfit.updateOutfitViews({
      'outfitId': item.id,
    });
  }

  // @override
  // void onClose() {
  //   super.onClose();
  // }
}
