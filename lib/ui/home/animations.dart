import 'package:flutter/material.dart';
import 'package:learn_flutter/ui/animation/AnimationWidget.dart';
import 'package:learn_flutter/ui/widget/FlexWidget.dart';
import 'package:learn_flutter/ui/widget/PaddingWidget.dart';
import 'package:learn_flutter/ui/widget/RowWidget.dart';
import 'package:learn_flutter/ui/widget/StackWidget.dart';
import 'package:learn_flutter/ui/widget/WrapWidget.dart';
import '../../widgets/WidgetsListItem.dart';
import '../animation/CanvasWidget.dart';
import '../common/CommonPage.dart';
import '../widget/ColumnWidget.dart';

class Animations extends StatefulWidget {
  final parentContext;

  const Animations(this.parentContext, {super.key});

  @override
  State<Animations> createState() => _AnimationsState();
}

class _AnimationsState extends State<Animations> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learning Animation',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: AnimationHome(widget.parentContext),
    );
  }
}

class AnimationHome extends StatefulWidget {
  const AnimationHome(this.parentContext, {super.key});
  final parentContext;

  @override
  State<AnimationHome> createState() => _AnimationHomeState();
}

class _AnimationHomeState extends State<AnimationHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation"),
        toolbarHeight: 44,
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
        children: <Widget>[
          ListTile(
            title: const FListItem(title: 'Canvas'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        // const WrapWidget(title: 'Canvas'),
                        const CanvasWidget(title: 'Canvas'),
                  ));
            },
          ),


          ListTile(
            title: const FListItem(title: 'Animation'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                    // const WrapWidget(title: 'Canvas'),
                    const AnimationWidget(title: 'Animation'),
                  ));
            },
          ),

        ],
      ),
    );
  }
}
