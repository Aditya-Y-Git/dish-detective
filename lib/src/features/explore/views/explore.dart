import 'package:flutter/material.dart';
import 'package:savory_scout/src/features/explore/views/widgets/dish.dart';
import 'package:savory_scout/src/features/explore/views/widgets/explore_search_bar.dart';
import 'package:savory_scout/src/features/explore/views/widgets/filter.dart';
import 'package:savory_scout/src/features/explore/views/widgets/explore_app_bar.dart';

enum DishFilter {
  drinks,
  breakfast,
  lunch,
  desert,
}

class Explore extends StatefulWidget {
  const Explore({super.key});

  @override
  State<Explore> createState() => _ExploreState();
}

class _ExploreState extends State<Explore> {
  TextEditingController searchController = TextEditingController();
  DishFilter dishFilter = DishFilter.drinks;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).padding.top + 10),
          // appbar
          const ExploreAppBar(),

          const SizedBox(height: 10),

          // search bar
          ExploreSearchBar(controller: searchController),

          // filters
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                Filter(name: 'Drinks', isActive: true),
                Filter(name: 'Breakfast', isActive: false),
                Filter(name: 'Lunch/Dineer', isActive: false),
                Filter(name: 'Dessert', isActive: false),
              ],
            ),
          ),

          // dishes
          Expanded(
            child: ListView.separated(
              padding: EdgeInsets.zero,
              itemCount: 5,
              itemBuilder: (context, index) => const Dish(),
              separatorBuilder: (context, index) => const SizedBox(height: 10),
            ),
          ),
        ],
      ),
    );
  }
}
