import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:frontend_jshy/widgets/subwidgets.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import '../resultpage.dart';
import '../theme/colors.dart';

class BottomBar extends StatefulWidget {
  const BottomBar(
      {Key? key,
      required this.listMap,
      required this.sum,
      required this.isKeyboardVisible})
      : super(key: key);

  final Map listMap;
  final int sum;
  final bool isKeyboardVisible;

  @override
  State<BottomBar> createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  @override
  Widget build(BuildContext context) {
    bool isKeyboardVisible = widget.isKeyboardVisible;
    int sum = widget.sum;

    List<String> itemList = widget.listMap["item"];
    List<int> priceList = widget.listMap["price"];
    List<bool> checkList = widget.listMap["check"];

    return Padding(
      padding:
          EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
          margin: const EdgeInsets.fromLTRB(30, 10, 30, 0),
          padding: EdgeInsets.fromLTRB(0, 0, 0, isKeyboardVisible ? 0 : 30),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "총액 : ",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                numFormat.format(sum),
                style:
                    const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Theme(
                data: Theme.of(context).copyWith(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                ),
                child: ElevatedButton(
                    onPressed: () {
                      var items = [];
                      for (int i = 0; i < checkList.length; i++) {
                        if (checkList[i]) {
                          var item = [itemList[i], priceList[i]];
                          items.add(item);
                          print(item);
                        }
                      }
                      Map result = {'items': items, 'sum': sum};
                      print(result);
                      // Get.to(() => const ResultPage(), arguments: result);
                      Get.bottomSheet(SelectPerBottomSheet(result));
                    },
                    style: ButtonStyle(
                      foregroundColor:
                          const MaterialStatePropertyAll(Colors.white),
                      splashFactory: NoSplash.splashFactory,
                      shadowColor:
                          const MaterialStatePropertyAll(Colors.transparent),
                      backgroundColor: MaterialStateProperty.resolveWith(
                        (states) {
                          if (states.contains(MaterialState.disabled)) {
                            return ColorStyles.subGreen; // 연한 초록
                          } else {
                            return ColorStyles.mainGreen; // 진한 초록
                          }
                        },
                      ),
                      shape: MaterialStateProperty.all(RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0))),
                    ),
                    child: const Text("1/N")),
              )
            ],
          )),
    );
  }
}
