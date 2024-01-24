import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/news_card.dart';

import '../../core/commons/constants.dart';

@RoutePage()
class MostPopularPage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Most Popular Articles')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            children: List<Widget>.generate(
              8,
                  (index) {
                return NewsCard(
                  title: 'How can I be Flutter Developer Expert',
                  desc: 'Jill Lepore 23 May 2023', imgSrc: Constants.dummyImg,
                );
              },
            ),
          ),
        ),
      ),
    );
  }

}