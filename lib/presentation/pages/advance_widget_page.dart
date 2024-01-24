import 'package:auto_route/auto_route.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../core/commons/colors_const.dart';
import '../../core/commons/constants.dart';
import '../widgets/organisms/ui_helper.dart';

@RoutePage()
class AdvanceWidgetPage extends StatelessWidget {
  const AdvanceWidgetPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            leading: BackButton(onPressed: () => Navigator.of(context).pop()),
            centerTitle: false,
            title: const Text('Dummy UI'),
            bottom: const TabBar(
              tabs: [
                Tab(text: 'ListView'),
                Tab(text: 'GridView'),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                itemCount: 20,
                itemBuilder: (context, position) {
                  return Container(
                    margin: UIHelper.padding(vertical: 10, horizontal: 10),
                    padding: UIHelper.padding(vertical: 20, horizontal: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: ColorConstant.grey, width: 0.5),
                        borderRadius: UIHelper.borderRadiusCircular(all: 10)),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                Constants.dummyImg,
                                width: UIHelper.setSp(60),
                                height: UIHelper.setSp(60),
                                fit: BoxFit.cover,
                              ),
                            ),
                            const Column(
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(left: 8.0, bottom: 10),
                                  child: Text('My Awesome Border', style: TextStyle(fontWeight: FontWeight.bold)),
                                ),
                                Text('My Awesome Border')
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
              GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: 10,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.all(8),
                    child: Container(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          border: Border.all(color: Colors.black),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8.0),
                              child: Image.network(
                                Constants.dummyImg,
                                width: UIHelper.setSp(80),
                                height: UIHelper.setSp(80),
                                fit: BoxFit.cover,
                              ),
                            ),
                            Text('Container 1')
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
