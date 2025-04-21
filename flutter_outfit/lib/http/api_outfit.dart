import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_outfit/index.dart';

class ApiOutfit {
  Future<List<Outfit>?> getOutfits(data) async {
    try {
      var response = await HttpClient().dio.get(
            ApiConfig.api_outfit,
            queryParameters: data,
          );
      debugPrint('获取穿搭列表结果: ${response.data}');
      if (response.data['code'] == 200) {
        return (response.data['data'] as List)
            .map(
              (e) => Outfit.fromJson(e),
            )
            .toList();
      }
    } catch (e) {
      // 请求失败，处理错误信息
      debugPrint('获取穿搭列表失败: $e');
    }
    return null;
  }

  Future<List<Outfit>?> getRecommendations() async {
    try {
      var response = await HttpClient().dio.get(
            ApiConfig.api_recommendation,
          );
      debugPrint('获取热门搭配结果: ${response.data}');
      // 请求成功，处理响应数据
      if (response.data['code'] == 200) {
        return (response.data['data'] as List)
            .map(
              (e) => Outfit.fromJson(e),
            )
            .toList();
      }
    } catch (e) {
      // 请求失败，处理错误信息
      debugPrint('获取热门搭配失败: $e');
    }
    return null;
  }

  Future<bool> updateOutfitViews(data) async {
    try {
      var response = await HttpClient().dio.post(
            ApiConfig.api_update_views,
            data: jsonEncode(data),
          );
      debugPrint('更新浏览量结果: ${response.data}');
      // 请求成功，处理响应数据
      return response.data['code'] == 200;
    } catch (e) {
      // 请求失败，处理错误信息
      debugPrint('更新浏览量失败: $e');
    }
    return false;
  }
}
