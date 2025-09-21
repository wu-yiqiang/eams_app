import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';

class PersonPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("个人中心")),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              Container(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(4)),
                    color: const Color.fromARGB(198, 245, 245, 245),
                  ),
                  child: Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: const Color.fromARGB(255, 181, 181, 181),
                            ),
                          ),
                        ),
                        child: Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(6),
                              child: Text(
                                '姓名',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(6),
                              child: Text(
                                'Sutter',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 64, 64, 64),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: const Color.fromARGB(255, 181, 181, 181),
                            ),
                          ),
                        ),
                        child: Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(6),
                              child: Text(
                                '部门',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(6),
                              child: Text(
                                '系统二部',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 64, 64, 64),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: const Color.fromARGB(255, 181, 181, 181),
                            ),
                          ),
                        ),
                        child: Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(6),
                              child: Text(
                                '岗位',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(6),
                              child: Text(
                                '网络工程师',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 64, 64, 64),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: const Color.fromARGB(255, 181, 181, 181),
                            ),
                          ),
                        ),
                        child: Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(6),
                              child: Text(
                                '入职时间',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(6),
                              child: Text(
                                '2025-09-12',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 64, 64, 64),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          border: Border(
                            bottom: BorderSide(
                              width: 1,
                              color: const Color.fromARGB(255, 181, 181, 181),
                            ),
                          ),
                        ),
                        child: Flex(
                          direction: Axis.horizontal,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding: EdgeInsets.all(6),
                              child: Text(
                                '合同到期',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                              ),
                            ),
                            Container(
                              padding: EdgeInsets.all(6),
                              child: Text(
                                '2027-09-12',
                                style: TextStyle(
                                  color: const Color.fromARGB(255, 64, 64, 64),
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
