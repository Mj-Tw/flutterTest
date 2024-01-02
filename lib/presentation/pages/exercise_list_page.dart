import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/core/routes/app_router.gr.dart';
import 'package:trinity_lecture_app/presentation/pages/dummy_ui_list_page.dart';


@RoutePage()
class ExerciseListPage extends StatelessWidget {

  const ExerciseListPage({super.key});

  @override
  Widget build(BuildContext context) {
    final items = ['DummyUi', 'Test', 'Test', 'Test', 'Test'];
    final subtitleDesc = ['introducing basic flutter widget', 'introducing basic flutter widget', 'introducing basic flutter widget', 'introducing basic flutter widget', 'introducing basic flutter widget'];

    return MaterialApp(
      home: Scaffold(

        body:ListView.separated(
          padding: const EdgeInsets.only(left: 10,right: 10,top: 100),
          itemCount: items.length,

          separatorBuilder: (BuildContext context, int index) => Divider(height: 1),
          itemBuilder: (BuildContext context, int index) {
            return ListTile(
              title: Text(items[index]),
              textColor: Colors.blue,
              subtitle: Text(subtitleDesc[index]),
              onTap:(){
                switch (index){
                  case 0:
                    context.router.navigate(const DummyListUiRoute());
                }
            },
            );
          },
        ),

      ),
    );
  }
}