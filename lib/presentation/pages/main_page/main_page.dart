import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/commons/constants.dart';
import 'package:trinity_lecture_app/core/routes/app_router.gr.dart';
import 'package:trinity_lecture_app/presentation/pages/dummy_ui_list_page.dart';
import 'package:trinity_lecture_app/presentation/pages/news_page.dart';

@RoutePage()
class ExerciseListPage extends StatelessWidget {
  const ExerciseListPage({super.key});

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      home: Scaffold(
        body: ListView.separated(
          padding: const EdgeInsets.only(left: 10, right: 10, top: 100),
          itemCount: Constants.items.length,
          separatorBuilder: (BuildContext context, int index) => Divider(height: 1),
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(
                Constants.items[index],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              textColor: Colors.blue,
              subtitle: Text(Constants.subtitleDesc[index]),
              onTap: () {
                switch (index) {
                  case 0:
                    context.router.navigate(const DummyListUiRoute());
                  case 1:
                    context.router.navigate(const CounterRoute());
                  case 2:
                    context.router.navigate(const InputValidationRoute());
                  case 3:
                    context.router.navigate(const SimpleCalculatorRoute());
                  case 4:
                    context.router.navigate(const NewsRoute());
                }
              },
            );
          },
        ),
      ),
    );
  }
}
