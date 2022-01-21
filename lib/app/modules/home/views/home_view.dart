import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youqiflutter/app/model/date_list.dart';
import 'package:youqiflutter/app/modules/home/views/content_card.dart';
import 'package:youqiflutter/app/routes/app_pages.dart';

import '../controllers/home_controller.dart';

const double SCALE_FRACTION = 0.7;
const double FULL_SCALE = 1.0;

/// 主页
class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: Column(
        children: [
          SizedBox(
            height: MediaQuery
                .of(context)
                .padding
                .top,
          ),
          // 头部
          _header(),
          // 中间列表
          Expanded(
            flex: 1,
            child: Container(
                margin: const EdgeInsets.only(top: 50),
                alignment: Alignment.topCenter,
                child: Obx(() {
                  if (controller.dateList.isNotEmpty) {
                    return PageView.builder(
                        itemCount: controller.dateList.length,
                        physics: const BouncingScrollPhysics(),
                        itemBuilder: (context, index) {
                          return circleOffer(
                              1.0, context, controller.dateList[index]);
                        });
                  }

                  return const Center(
                    child: CircularProgressIndicator(
                      strokeWidth: 4.0,
                    ),
                  );
                })),
          ),
          // 底栏
          _bottomBar(context),
        ],
      ),
    );
  }

  // 头部布局
  Widget _header() {
    return Container(
      padding: const EdgeInsets.only(top: 22, left: 12, right: 12, bottom: 24),
      child: Row(
        children: [
          Expanded(
              flex: 1,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("南风起",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30,
                          fontWeight: FontWeight.bold)),
                  SizedBox(height: 6),
                  Text("三月初七",
                      style: TextStyle(color: Colors.white, fontSize: 16))
                ],
              )),
          Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.topRight,
                child: CustomPaint(
                  foregroundPainter: DateLinePainter(),
                  child: SizedBox(
                    width: 65,
                    height: 65,
                    child: Stack(
                      children: const [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            "12",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            "12",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }

  // 底栏
  Widget _bottomBar(BuildContext context) {
    return Container(
      height: 200,
      padding: const EdgeInsets.only(bottom: 50),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            width: 20,
          ),
          const Icon(Icons.share, color: Colors.white),
          const SizedBox(
            width: 12,
          ),
          const Text("12", style: TextStyle(color: Colors.white, fontSize: 16)),
          const SizedBox(
            width: 20,
          ),
          const Icon(Icons.chat_outlined, color: Colors.white),
          const SizedBox(
            width: 12,
          ),
          const Text("12", style: TextStyle(color: Colors.white, fontSize: 16)),
          const Spacer(flex: 1),
          AvatarView(),
          const SizedBox(
            width: 20,
          ),
        ],
      ),
    );
  }
}


class AvatarView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 64,
        height: 64,
        alignment: Alignment.center,
        child: ClipOval(
          child: Container(
            color: Colors.white,
            padding: const EdgeInsets.all(4),
            child: ClipOval(
              child: Container(
                color: Colors.blue,
              ),
            ),
          ),
        )
    );
  }


}

class DateLinePainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    /// 初始化画笔
    var paint = Paint()
      ..strokeWidth = 2.0
      ..color = Colors.white;

    canvas.drawLine(Offset(size.width, 0), Offset(0, size.height), paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }
}

Widget circleOffer(double scale, BuildContext context, Data data) {
  final width = MediaQuery.of(context).size.width - 40;
  return Container(
    alignment: Alignment.topCenter,
    child: SizedBox(
        height: width,
        width: width,
        child: InkWell(
            onTap: () {
              Get.toNamed(Routes.DETAIL);
            },
            child: ContentCard(data: data))),
  );
}
