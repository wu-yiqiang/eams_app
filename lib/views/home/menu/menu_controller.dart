import 'package:get/get.dart';

class TodayMenuController extends GetxController {
  RxInt currentIndex = 0.obs;
  RxList todayMenus = [
    {
      'path': 'assets/images/menus/menu1.png',
      'title': '糯米糕',
      "description": "糯米糕是中国传统糕类小吃，以糯米（或糯米粉）为核心原料，辅以面粉、豆沙、红枣、红糖、坚果（如核桃、花生）等配料制成，属于蒸制或油炸类甜点。部分地区也会加入野草汁（如马田糯米糕）、牛奶（如奶香红枣糯米糕）等提升风味。",
    },
    {
      'path': 'assets/images/menus/menu2.png',
      'title': '卤鸡腿',
      "description": "鸡腿是鸡从脚到腿的部位，及腿根一带的肉，其肉质颇坚硬，连皮吃的话脂肪含量较多。鸡腿的肉质细嫩，滋味鲜美，味道较淡，可使用于各种料理中。一般人群均可食用，老人、病人、体弱者、贫血患者更宜食用。鸡腿肉高蛋白低脂肪，鸡腿皮的脂肪含量较高，因此不可把带皮的鸡腿视为低热量的食品。同时鸡腿含有丰富的维生素B12、维生素B6、维生素A、维生素D和维生素K等，也是磷、铁、铜和锌的良好来源。",
    },
    {
      'path': 'assets/images/menus/menu3.png',
      'title': '鸡蛋羹',
      "description": "鸡蛋是人类最好的营养来源之一，鸡蛋中含有大量的维生素和矿物质及有高生物价值的蛋白质。对人而言，鸡蛋的蛋白质品质最佳，仅次于母乳。一个鸡蛋所含的热量，相当于半个苹果或半杯牛奶的热量，但是它还拥有8%的磷、4%的锌、4%的铁、12.6%的蛋白质、6%的维生素D、3%的维生素E、6%的维生素A、2%的维生素B、5%的维生素B2.4%的维生素B6。这些营养都是人体必不可少的，它们起着极其重要的作用，如修复人体组织、形成新的组织、消耗能量和参与复杂的新陈代谢过程等。",
    },
    {
      'path': 'assets/images/menus/menu4.png',
      'title': '水煮虾滑',
      "description": "水煮虾滑是一道菜品，主料是虾，配料是油菜、鸡蛋白等，调料为淀粉、色拉油、食盐等，通过加热水煮的做法而成。",
    },
  ].obs;
  void setIndex(value) {
    currentIndex.value = value;
  }
}
