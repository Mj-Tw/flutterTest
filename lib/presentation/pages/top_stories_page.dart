import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';

import '../widgets/molecules/chip.dart';

@RoutePage()
class TopStoriesPage extends StatelessWidget {
  const TopStoriesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(onPressed: () => Navigator.of(context).pop()),
        centerTitle: false,
        title: const Text('Top Stories'),
      ),
      body: Column(
        children: [
          const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.only(left: 10),
                child: Text('CHOOSE TYPE', style: TextStyle(color: Colors.greenAccent)),
              )),
          Wrap(
            children: [
              ChipCustom(
                title: 'arts',
                onTap: () {},
              ),
              ChipCustom(
                title: 'automobiles',
                onTap: () {},
              ),
              ChipCustom(
                title: 'food',
                onTap: () {},
              ),
              ChipCustom(
                title: 'books/review',
                onTap: () {},
              ),
              ChipCustom(
                title: 'movies',
                onTap: () {},
              ),
              ChipCustom(
                title: 'sports',
                onTap: () {},
              ),
              ChipCustom(
                title: 'politics',
                onTap: () {},
              ),
              ChipCustom(
                title: 'fashion',
                onTap: () {},
              ),
              ChipCustom(
                title: 'home',
                onTap: () {},
              ),
              ChipCustom(
                title: 'business',
                onTap: () {},
              )
            ],
          )
        ],
      ),
    );
  }
}
