import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/ui_helper.dart';

@RoutePage()
class CounterPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          leading: BackButton(onPressed: () => Navigator.of(context).pop()),
          centerTitle: false,
          title: const Text('Counter App'),
        ),
        body: Center(
          child:
              Text(
                '0',
              ),),
              floatingActionButton: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  FloatingActionButton(
                    key: const Key('counterView_increment_floatingActionButton'),
                    child: const Icon(Icons.add),
                    onPressed: () {

                    },
                  ),
                  const SizedBox(height: 8),
                  FloatingActionButton(
                    key: const Key('counterView_decrement_floatingActionButton'),
                    child: const Icon(Icons.remove),
                    onPressed: () {

                    },
                  )
                ],
              )
        );
  }
}
