import 'package:flutter/material.dart';

class CatalogyListPage extends StatefulWidget {
  const CatalogyListPage({super.key});

  @override
  State<CatalogyListPage> createState() => _CatalogyListPageState();
}

class _CatalogyListPageState extends State<CatalogyListPage> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  Future<void> _getCatalogyList() async {
    //final config = Configuration.local([CatalogyRealmEntity.schema]);
  }
}
