import 'package:flutter/material.dart';
import '../view/detail_view.dart';

class DetailController extends State<DetailView> {
  static late DetailController instance;
  late DetailView view;

  @override
  void initState() {
    instance = this;
    super.initState();
  }

  @override
  void dispose() => super.dispose();

  var colors = [Color(0xfffff9f8), Color(0xfff5fef0)];

  @override
  Widget build(BuildContext context) => widget.build(context, this);
}
