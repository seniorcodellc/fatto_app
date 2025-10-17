import 'package:fatto/features/categories/presentation/widgets/custom_search_app_bar.dart';
import 'package:fatto/features/categories/presentation/widgets/search_screen_body.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomSearchAppBar(),
        body: CustomScrollView(
          slivers: [SliverToBoxAdapter(child: SearchScreenBody())],
        ),
      ),
    );
  }
}
