import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'index.dart';

class RecordPage extends GetView<RecordController> {
  const RecordPage({super.key});

  // 主视图
  Widget _buildView() {
    return const Center(
      child: Text("RecordPage"),
    );
  }

  @override
  Widget build(BuildContext context) {
    return GetBuilder<RecordController>(
      init: RecordController(),
      id: "record",
      builder: (_) {
        return Scaffold(
          appBar: AppBar(
            title: const Text("Records"),
            centerTitle: true,
          ),
          body: SafeArea(
            child: _buildView(),
          ),
        );
      },
    );
  }
}
