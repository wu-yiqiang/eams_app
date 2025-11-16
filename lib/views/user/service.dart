import 'package:eams/common/const.dart';
import 'package:eams/utils/EventBus.dart';
import 'package:eams/views/user/controller/app_setting_controller.dart';
import 'package:eams/widgets/Chat/AiChat.dart';
import 'package:eams/widgets/Chat/MeChat.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CutomerServicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("aiCustomerService".tr)),
      body: Container(
        child: Flex(
          direction: Axis.vertical,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [MainContainer(), InputContainer()],
        ),
      ),
    );
  }
}

class MainContainer extends StatefulWidget {
  MainContainer({super.key});
  @override
  State<MainContainer> createState() => _MainContainer();
}

class _MainContainer extends State<MainContainer> {
  AppSettingController appSettingController = Get.put(AppSettingController());
  final controller = ScrollController();
  void scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      if (controller.hasClients) {
        // controller.animateTo(
        //   controller!.position!.maxScrollExtent!,
        //   duration: const Duration(milliseconds: 50),
        //   curve: Curves.easeOutQuart,
        // );
        controller.jumpTo(controller.position.maxScrollExtent);
      }
    });
  }

  void initState() {
    scrollToBottom();
    eventBus.on(Events.SCROLLBOTTOM.name, (value) {
      scrollToBottom();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.all(10),
        child: SingleChildScrollView(
          controller: controller,
          child: Obx(() {
            return Column(
              spacing: 10,
              children: appSettingController.answerList.map((item) {
                return item['type'] == ChatType.AI.index
                    ? AiChat(item: item)
                    : MeChat(item: item);
              }).toList(),
            );
          }),
        ),
      ),
    );
  }
}

class InputContainer extends StatefulWidget {
  InputContainer({super.key});
  @override
  State<InputContainer> createState() => _InputContainer();
}

class _InputContainer extends State<InputContainer> {
  AppSettingController appSettingController = Get.put(AppSettingController());
  TextEditingController _textController = TextEditingController();
  FocusNode focusNode = FocusNode();
  @override
  void initState() {
    focusNode.addListener(() {
      if (focusNode.hasFocus) {
        print('得到焦点');
        eventBus.emit(Events.SCROLLBOTTOM.name);
      } else {
        print('失去焦点');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      child: Row(
        children: [
          Expanded(
            child: TextField(
              focusNode: focusNode,
              controller: _textController,
              decoration: InputDecoration(
                contentPadding: EdgeInsets.all(12),
                border: OutlineInputBorder(),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(color: primaryTheme, width: 2.0),
                ),
                hintText: 'pleaseInput'.tr,
                suffixIcon: Obx(() {
                  if (appSettingController.loading.value) {
                    return IconButton(
                      icon: Icon(Icons.stop_circle),
                      onPressed: () {
                        if (appSettingController.loading.value) {
                          appSettingController.cancelRequest();
                        }
                        ;
                      },
                    );
                  } else {
                    return IconButton(
                      icon: Icon(Icons.upload_rounded),
                      onPressed: () {
                        if (appSettingController.loading.value) return;
                        appSettingController.addQuestions();
                        _textController.clear();
                        eventBus.emit(Events.SCROLLBOTTOM.name);
                      },
                    );
                  }
                }),
              ),
              onChanged: (text) {
                appSettingController.questionText.value = text;
              },
            ),
          ),
        ],
      ),
    );
  }
}
