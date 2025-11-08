import 'package:eams/common/const.dart';
import 'package:eams/router/routers.dart';
import 'package:eams/widgets/MenuButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class WorkbenchPage extends StatelessWidget {
  List menus = [
    {
      'menu': "assetsCenter".tr,
      'childrens': <Map>[
        {
          'label': 'fixedAssets'.tr,
          'icon': 'assets/svg/fixAssets.svg',
          'path': routerMap['EQUIPMENT'],
        },
        {
          'label': 'currentAssets'.tr,
          'icon': 'assets/svg/activeAssets.svg',
          'path': routerMap['VEHICLE'],
        },
      ],
    },
    {
      'menu': 'employeeCenter'.tr,
      'childrens': <Map>[
        {
          'label': 'employeeInformation'.tr,
          'icon': 'assets/svg/employee.svg',
          'path': routerMap['EQUIPMENT'],
        },
        {
          'label': 'attendanceInformation'.tr,
          'icon': 'assets/svg/work.svg',
          'path': routerMap['EQUIPMENT'],
        },
        {
          'label': 'salaryInformation'.tr,
          'icon': 'assets/svg/salary.svg',
          'path': routerMap['EQUIPMENT'],
        },
        {
          'label': 'socialSecurityInformation'.tr,
          'icon': 'assets/svg/socialSecurity.svg',
          'path': routerMap['EQUIPMENT'],
        },
      ],
    },
    {
      'menu': 'financeCenter'.tr,
      'childrens': <Map>[
        {
          'label': 'reimbursementApproval'.tr,
          'icon': 'assets/svg/reimbursementApproval.svg',
          'path': routerMap['VEHICLE'],
        },
        {
          'label': 'purchaseApproval'.tr,
          'icon': 'assets/svg/buy.svg',
          'path': routerMap['EQUIPMENT'],
        },
      ],
    },
    {
      'menu': 'businessCenter'.tr,
      'childrens': <Map>[
        {
          'label': 'purchaseContract'.tr,
          'icon': 'assets/svg/buyContract.svg',
          'path': routerMap['VEHICLE'],
        },
        {
          'label': 'salesContract'.tr,
          'icon': 'assets/svg/saleContract.svg',
          'path': routerMap['VEHICLE'],
        },
      ],
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menus"),
        leading: null,
        automaticallyImplyLeading: false,
        backgroundColor: greyColor,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.add)),
          IconButton(onPressed: () {}, icon: Icon(Icons.delete)),
          IconButton(onPressed: () {}, icon: Icon(Icons.update)),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.only(left: 14, right: 14, top: 10, bottom: 10),
            child: Column(
              spacing: 10,
            children: menus.map((menu) {
                return Column(
                  spacing: 10,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      child: Text(
                        menu['menu'],
                        style: TextStyle(
                          color: blackColor,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 0),
                      child: GridView(
                        shrinkWrap: true,
                        physics:
                            const NeverScrollableScrollPhysics(), // 禁止滚动（如果放在可滚动组件中）
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 4,
                          childAspectRatio: 1.0,
                        ),
                        children: _menus(menu['childrens']),
                      ),
                    ),
                  ],
                );
            }).toList(),
          ),
        ),
        ),
      ),
    );
  }

  List<Widget> _menus(datas) {
    return datas.map<Widget>((item) {
      return MenuButton(item: item);
    }).toList();
  }
}
