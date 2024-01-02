import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:trinity_lecture_app/core/commons/colors_const.dart';
import 'package:trinity_lecture_app/core/commons/constants.dart';
import 'package:trinity_lecture_app/core/routes/app_router.gr.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/news_card.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

import '../widgets/organisms/text_form_field.dart';

@RoutePage()
class DummyListUiPage extends StatelessWidget {
  const DummyListUiPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(onPressed: () => Navigator.of(context).pop()),
          centerTitle: false,
          title: const Text('Dummy UI'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              InkWell(
                onTap: (){
                  context.router.navigate(const AdvanceWidgetRoute());
                },
                child: const Row(

                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Align(
                      alignment: Alignment.topLeft,
                      child: Padding(
                        padding: EdgeInsets.all(10),
                        child: Column(

                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Next',style: TextStyle(color: Colors.blue,fontWeight: FontWeight.bold),),
                            Text('Tab Bar ,GridView'),
                            Text('ListView')
                          ],

                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 8.0),
                      child: Icon(
                        Icons.arrow_forward_ios,
                      ),
                    )
                  ],
                ),
              ),
            const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 10),
              child: Text('CONTAINER AND TEXT', style: TextStyle(color: Colors.greenAccent)),
            ),
          ),
          Container(
            margin: UIHelper.padding(vertical: 10, horizontal: 10),
            width: MediaQuery
                .of(context)
                .size
                .width,
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
                        width: 60,
                        height: 60,
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
          ),
          const Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 10, top: 25),
              child: Text('COLUMN', style: TextStyle(color: Colors.greenAccent)),
            ),
          ),
          Container(
            margin: UIHelper.padding(vertical: 10, horizontal: 10),
            width: MediaQuery
                .of(context)
                .size
                .width,
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
                        width: 60,
                        height: 60,
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
          ),
          Container(
            margin: UIHelper.padding(vertical: 5, horizontal: 10),
            width: MediaQuery
                .of(context)
                .size
                .width,
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
                        width: 60,
                        height: 60,
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
          ),
          Container(
            margin: UIHelper.padding(vertical: 10, horizontal: 10),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text('ROW', style: TextStyle(color: Colors.greenAccent)),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: UIHelper.padding(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: ColorConstant.grey, width: 0.5),
                    borderRadius: UIHelper.borderRadiusCircular(all: 10)),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        Constants.dummyImg,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text('Container 1')
                  ],
                ),
              ),
              Container(
                padding: UIHelper.padding(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: ColorConstant.grey, width: 0.5),
                    borderRadius: UIHelper.borderRadiusCircular(all: 10)),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        Constants.dummyImg,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text('Container 1')
                  ],
                ),
              ),
              Container(
                padding: UIHelper.padding(vertical: 10, horizontal: 10),
                decoration: BoxDecoration(
                    border: Border.all(color: ColorConstant.grey, width: 0.5),
                    borderRadius: UIHelper.borderRadiusCircular(all: 10)),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.network(
                        Constants.dummyImg,
                        width: 60,
                        height: 60,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Text('Container 1')
                  ],
                ),
              ),
            ],
          ),
          Container(
            margin: UIHelper.padding(vertical: 10, horizontal: 10),
            child: const Align(
              alignment: Alignment.centerLeft,
              child: Text('BUTTON', style: TextStyle(color: Colors.greenAccent)),
            ),

          ),

          Container(
            width: MediaQuery
                .of(context)
                .size
                .width,
            margin: UIHelper.padding(vertical: 4, horizontal: 20),
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(primary:Colors.blue.shade100,shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                )),
                child: Text('SUBMIT', style: TextStyle(color: Colors.blue.shade500,fontWeight: FontWeight.bold),),
                onPressed: (){
                  UIHelper.showToast("hi");
                },
          ),
                  ),
              Container(
                margin: UIHelper.padding(vertical: 10, horizontal: 10),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('INPUT', style: TextStyle(color: Colors.greenAccent)),
                ),

              ),
              Container(
                  width: MediaQuery
                      .of(context)
                      .size
                      .width,
                  margin: UIHelper.padding(vertical: 4, horizontal: 20),
                  child: TextFormFieldCustom(title:'Email',hintText: "Enter your email..",preffixIcon: SvgPicture.asset('assets/svgs/email_icon.svg'),)),
              Container(
                margin: UIHelper.padding(vertical: 10, horizontal: 10),
                child: const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('IMAGE ASSETS,SIZED BOX and EXPANDED', style: TextStyle(color: Colors.greenAccent)),
                ),

              ),
              Row(
                children: [
                  Expanded(flex: 2,
                      child:  Container(
                    margin: UIHelper.padding(vertical: 8, horizontal: 10),
                    padding: UIHelper.padding(vertical: 20, horizontal: 10),
                    decoration: BoxDecoration(
                        border: Border.all(color: ColorConstant.grey, width: 0.5),
                        borderRadius: UIHelper.borderRadiusCircular(all: 10)),
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8.0),
                          child: Image.network(
                            Constants.dummyImg,
                            width: UIHelper.setSp(70),
                            height:  UIHelper.setSp(70),
                            fit: BoxFit.cover,
                          ),
                        ),
                        Text('My Awesome Border', style: TextStyle(fontWeight: FontWeight.bold)),
                      ],
                    ),
                  )
                  ),
                  Expanded(
                    child: Container(
                      margin: UIHelper.padding(vertical: 8, horizontal: 10),

                      padding: UIHelper.padding(vertical: 20, horizontal: 10),
                      decoration: BoxDecoration(
                          border: Border.all(color: ColorConstant.grey, width: 0.5),
                          borderRadius: UIHelper.borderRadiusCircular(all: 10)),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(8.0),
                            child: Image.network(
                              Constants.dummyImg,
                              width: UIHelper.setSp(70),
                              height:  UIHelper.setSp(70),
                              fit: BoxFit.cover,
                            ),
                          ),
                          Text('My Awesome Border', style: TextStyle(fontWeight: FontWeight.bold)),
                        ],
                      ),
                    ),
                  )



                ],
              )
                     ],
                ),
    )),
    );
  }
}
