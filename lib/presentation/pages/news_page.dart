import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:fpdart/fpdart.dart';
import 'package:trinity_lecture_app/core/routes/app_router.gr.dart';
import 'package:trinity_lecture_app/presentation/widgets/organisms/news_card.dart';

import '../../core/commons/constants.dart';
import '../widgets/organisms/ui_helper.dart';

@RoutePage()
class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('News App')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Top Stories',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(
                'Top stories from all time',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              UIHelper.verticalSpace(10),
              InkWell(
                onTap: () => context.router.navigate(const TopStoriesRoute())
                ,
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.blue),
                    borderRadius: UIHelper.borderRadiusCircular(all: 8),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Go To Categories Section',
                        style: TextStyle(color: Colors.blue, fontSize: 12),
                      ),
                      Icon(
                        Icons.double_arrow,
                        color: Colors.blue,
                      )
                    ],
                  ),
                ),
              ),
              UIHelper.verticalSpace(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Most Popular Articles',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  InkWell(
                    onTap: () => context.router.navigate(const MostPopularRoute()),
                    child: const Text(
                      'See All',
                      style: TextStyle(fontSize: 16, color: Colors.blue),
                    ),
                  ),
                ],
              ),
              const Text(
                'Top article from last week',
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              UIHelper.verticalSpace(10),
              Column(
                children: List<Widget>.generate(
                  3,
                      (index) {
                    return NewsCard(
                        title: 'How can I be Flutter Developer Expert',
                        desc: 'Jill Lepore 23 May 2023', imgSrc: Constants.dummyImg
                    );
                  },
                ).intersperse(UIHelper.verticalSpace(10)).toList(),
              )
            ],
          ),
        ),
      ),
    );
  }
}
