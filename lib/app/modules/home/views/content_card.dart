import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youqiflutter/app/model/date_list.dart';

class ContentCard extends GetView {
  final Data data;

  const ContentCard({Key? key, required this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(24),
        child: Column(
          children: [
            Expanded(
                child: Center(
              child: Text(data.content?.title ?? "",
                  textAlign: TextAlign.start,
                  style: const TextStyle(fontSize: 24)),
            )),
            Row(
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: Text(data.content?.personSim ?? ""))
              ],
            )
          ],
        ),
      ),
    );
  }
}
