import 'package:flutter/material.dart';
import 'package:news_app/widgets/categories_list_view.dart';
import '../widgets/news_list_view_builder.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            centerTitle: true,
            title: RichText(
              text: const TextSpan(
                text: 'News ',
                style: TextStyle(color: Colors.black, fontSize: 20),
                children: [
                  TextSpan(
                      text: 'Cloud',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.orange)),
                ],
              ),
            )),
        body: const Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 16),
            child: CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: [
                SliverToBoxAdapter(child: CategoriesListView()),
                SliverToBoxAdapter(
                    child: SizedBox(
                  height: 32,
                )),
                NewsListViewBuilder(
                  category: 'general',
                ),
                //  SliverToBoxAdapter(child: NewsListView())  ,
              ],
            )));
  }
}
