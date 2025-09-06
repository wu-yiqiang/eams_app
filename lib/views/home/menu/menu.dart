import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class MenuPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("今日菜谱"),
        leading: null,
        automaticallyImplyLeading: false,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Container(
              width: 120,
              height: 120,
              margin: EdgeInsets.only(top: 30, bottom: 30),
              child: Text("今日菜谱"),
            ),
          ],
        ),
      ),
    );
  }
}

// import 'dart:convert';

// import 'package:flutter/material.dart';
// import 'package:wanandroid_flutter/entity/navi_entity.dart';
// import 'package:wanandroid_flutter/http/httpUtil.dart';
// import 'package:wanandroid_flutter/pages/articleDetail.dart';
// import 'package:wanandroid_flutter/res/colors.dart';

// class NaviPage extends StatefulWidget {
//   @override
//   State<StatefulWidget> createState() {
//     return _NaviPageState();
//   }
// }

// class _NaviPageState extends State<NaviPage> {
//   List<NaviData> _datas = List(); //一级分类集合
//   List<NaviDataArticle> articles = List(); //二级分类集合
//   int index; //一级分类下标

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: <Widget>[
//         Expanded(
//           flex: 2,
//           child: Container(
//             color: Colors.white,
//             child: ListView.builder(
//               itemCount: _datas.length,
//               itemBuilder: (BuildContext context, int position) {
//                 return getRow(position);
//               },
//             ),
//           ),
//         ),
//         Expanded(
//           flex: 5,
//           child: ListView(
//             children: <Widget>[
//               Container(
//                 //height: double.infinity,
//                 alignment: Alignment.topLeft,
//                 padding: const EdgeInsets.all(10),
//                 color: Colors.amber,
//                 child: getChip(index), //传入一级分类下标
//               ),
//             ],
//           ),
//         ),
//       ],
//     );
//   }

//   Widget getRow(int i) {
//     Color textColor = Theme.of(context).primaryColor; //字体颜色
//     return GestureDetector(
//       child: Container(
//         alignment: Alignment.center,
//         padding: EdgeInsets.symmetric(vertical: 15, horizontal: 10),
//         //Container下的color属性会与decoration下的border属性冲突，所以要用decoration下的color属性
//         decoration: BoxDecoration(
//           color: index == i ? Colors.amber : Colors.white,
//           border: Border(
//             left: BorderSide(
//               width: 5,
//               color: index == i ? Theme.of(context).primaryColor : Colors.white,
//             ),
//           ),
//         ),
//         child: Text(
//           _datas[i].name,
//           style: TextStyle(
//             color: index == i ? textColor : Colors.blue,
//             fontWeight: index == i ? FontWeight.w600 : FontWeight.w400,
//             fontSize: 16,
//           ),
//         ),
//       ),
//       onTap: () {
//         setState(() {
//           index = i; //记录选中的下标
//           textColor = Colors.blue;
//         });
//       },
//     );
//   }

//   Widget getChip(int i) {
//     //更新对应下标数据
//     _updateArticles(i);
//     return Wrap(
//       spacing: 10.0, //两个widget之间横向的间隔
//       direction: Axis.horizontal, //方向
//       alignment: WrapAlignment.start, //内容排序方式
//       children: List<Widget>.generate(articles.length, (int index) {
//         return ActionChip(
//           //标签文字
//           label: Text(
//             articles[index].title,
//             style: TextStyle(fontSize: 16, color: Colors.red),
//           ),
//           //点击事件
//           onPressed: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (context) => ArticleDetail(
//                   title: articles[index].title,
//                   url: articles[index].link,
//                 ),
//               ),
//             );
//           },
//           elevation: 3,
//           backgroundColor: Colors.grey.shade200,
//         );
//       }).toList(),
//     );
//   }

//   ///
//   /// 根据一级分类下标更新二级分类集合
//   ///
//   List<NaviDataArticle> _updateArticles(int i) {
//     setState(() {
//       if (_datas.length != 0) articles = _datas[i].articles;
//     });
//     return articles;
//   }
// }
