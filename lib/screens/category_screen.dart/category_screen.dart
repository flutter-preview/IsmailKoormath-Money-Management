import 'package:flutter/material.dart';
import 'package:money_management/screens/category_screen.dart/expense_category_list.dart';
import 'package:money_management/screens/category_screen.dart/income_category_list.dart';

class Category_Screen extends StatefulWidget {
  const Category_Screen({super.key});

  @override
  State<Category_Screen> createState() => _Category_ScreenState();
}

class _Category_ScreenState extends State<Category_Screen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TabBar(
          controller: _tabController,
          labelColor: Colors.black,
          unselectedLabelColor: Colors.grey,
          tabs: [
            Tab(
              text: 'INCOME',
            ),
            Tab(
              text: 'EXPENSE',
            ),
          ],
        ),
        Expanded(
          child: TabBarView(controller: _tabController, children: [
            IncomeCategoryList(),
            ExpenseCategoryList(),
          ]),
        )
      ],
    );
  }
}
