import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ContentCard extends GetView {
  const ContentCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            const Expanded(
                child: Center(
              child: Text("测试",
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 24)),
            )),
            Row(
              children: const [
                Padding(
                    padding: EdgeInsets.only(top: 12), child: Text("SPICa27"))
              ],
            )
          ],
        ),
      ),
    );
  }
}
