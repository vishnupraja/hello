import 'dart:convert';

import 'package:e_learning/Model/GetCategoryModel.dart';
import 'package:flutter/material.dart';

import '../LoginScreen/categroylist.dart';

class ProductCardNew extends StatefulWidget {
  final catTitle;
  final GetCategoryModel cat;

  const ProductCardNew({Key? key, this.catTitle, required this.cat})
      : super(key: key);

  @override
  State<ProductCardNew> createState() => _ProductCardNew();
}

class _ProductCardNew extends State<ProductCardNew> {
  List categories = [];
  List selectedCategories = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    categories = widget.cat.data!.map((e) => e.name).toList();

  }

  @override
  Widget build(BuildContext context) {
    var h = MediaQuery.of(context).size.height;
    var w = MediaQuery.of(context).size.width;

    return Container(
      child: Column(
        children: [
          ListTile(
            title: Text(
              "${widget.catTitle}",
              style: Theme.of(context).textTheme.titleLarge,
            ),
          ),
          Wrap(
            spacing: 20,
            children: categories
                .asMap()
                .entries
                .map<Widget>((e) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => CategoryList()));
                    },
                    child: Chip(
                        side: BorderSide(width: 1, color: Colors.black),
                        backgroundColor: selectedCategories.contains(e.key)
                            ? Colors.blue
                            : Colors.transparent,
                        label: Text("${e.value}"))))
                .toList(),
          ),
        ],
      ),
    );
  }
}

