import 'package:eams/common/const.dart';
import 'package:eams/router/routers.dart';
import 'package:eams/widgets/MenuButton.dart';
import 'package:flutter/material.dart';

class WorkbenchPage extends StatelessWidget {
  final List menus = [
    {
      'menu': "资产中心",
      'childrens': <Map>[
        {
          'label': "固定资产",
          'icon': 'assets/svg/fixAssets.svg',
          'path': routerMap['EQUIPMENT'],
        },
        {
          'label': "流动资产",
          'icon': 'assets/svg/activeAssets.svg',
          'path': routerMap['VEHICLE'],
        },
      ],
    },
    {
      'menu': "人员中心",
      'childrens': <Map>[
        {
          'label': "员工信息",
          'icon': 'assets/svg/employee.svg',
          'path': routerMap['EQUIPMENT'],
        },
        {
          'label': "考勤信息",
          'icon': 'assets/svg/work.svg',
          'path': routerMap['EQUIPMENT'],
        },
        {
          'label': "薪酬信息",
          'icon': 'assets/svg/salary.svg',
          'path': routerMap['EQUIPMENT'],
        },
        {
          'label': "社保信息",
          'icon': 'assets/svg/socialSecurity.svg',
          'path': routerMap['EQUIPMENT'],
        },
      ],
    },
    {
      'menu': '财务中心',
      'childrens': <Map>[
        {
          'label': "报销审批",
          'icon': 'assets/svg/reimbursementApproval.svg',
          'path': routerMap['VEHICLE'],
        },
        {
          'label': "采购审批",
          'icon': 'assets/svg/buy.svg',
          'path': routerMap['EQUIPMENT'],
        },
      ],
    },
    {
      'menu': '业务中心',
      'childrens': <Map>[
        {
          'label': "采购合同",
          'icon': 'assets/svg/buyContract.svg',
          'path': routerMap['VEHICLE'],
        },
        {
          'label': "销售合同",
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
            padding: EdgeInsets.all(20),
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
                          crossAxisCount: 5,
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
