import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/ui/widget/AppBarWidget.dart';
import 'package:learn_flutter/ui/widget/ButtonWidget.dart';
import 'package:learn_flutter/ui/widget/DialogWidget.dart';
import 'package:learn_flutter/ui/widget/DrawerWidget.dart';
import 'package:learn_flutter/ui/widget/FlexWidget.dart';
import 'package:learn_flutter/ui/widget/ImageWidget.dart';
import 'package:learn_flutter/ui/widget/ListWidget.dart';
import 'package:learn_flutter/ui/widget/PaddingWidget.dart';
import 'package:learn_flutter/ui/widget/RadioWidget.dart';
import 'package:learn_flutter/ui/widget/RowWidget.dart';
import 'package:learn_flutter/ui/widget/SliderWidget.dart';
import 'package:learn_flutter/ui/widget/SnackBarWidget.dart';
import 'package:learn_flutter/ui/widget/StackWidget.dart';
import 'package:learn_flutter/ui/widget/SwitchWidget.dart';
import 'package:learn_flutter/ui/widget/TabsWidget.dart';
import 'package:learn_flutter/ui/widget/TextFieldWidget.dart';
import 'package:learn_flutter/ui/widget/WrapWidget.dart';
import '../../widgets/WidgetsListItem.dart';
import '../widget/BottomSheetWidget.dart';
import '../widget/CheckBoxWidget.dart';
import '../widget/ColumnWidget.dart';
import '../widget/ProgressBarWidget.dart';
import '../widget/ShapeWidget.dart';
import '../widget/TextWidget.dart';

class Widgets extends StatefulWidget {
  final parentContext;

  const Widgets(this.parentContext, {super.key});

  @override
  State<Widgets> createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learning Widget',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: WidgetHome(widget.parentContext),
    );
  }
}

class WidgetHome extends StatefulWidget {
  const WidgetHome(this.parentContext, {super.key});

  final parentContext;

  @override
  State<WidgetHome> createState() => _WidgetHomeState();
}

class _WidgetHomeState extends State<WidgetHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Widgets"),
        toolbarHeight: 44,
        backgroundColor: Theme.of(context).secondaryHeaderColor,
        // backgroundColor: Theme.of(context).backgroundColor,
      ),
      body: ListView(
        // padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
        children: <Widget>[
          InkWell(
            child: const FListItem(title: 'Column'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const ColumnWidget(title: 'Column'),
                  ));
            },
          ),
          InkWell(
            child: const FListItem(title: 'Rom'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const RowWidget(title: 'Row'),
                  ));
            },
          ),
          InkWell(
            child: const FListItem(title: 'Flex Expanded'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const FlexWidget(title: 'Flex Expanded'),
                  ));
            },
          ),
          InkWell(
            child: const FListItem(title: 'Wrap'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const WrapWidget(title: 'Wrap'),
                  ));
            },
          ),
          InkWell(
            child: const FListItem(title: 'Stack'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const StackWidget(title: 'Stack'),
                  ));
            },
          ),
          InkWell(
            child: const FListItem(title: 'Padding and Margin'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const PaddingWidget(title: 'Padding and Margin'),
                  ));
            },
          ),
           InkWell(
            child: const FListItem(title: 'List'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                    const ListWidget(title: 'List'),
                  ));
            },
          ),
          InkWell(
            child: const FListItem(title: 'Button'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const ButtonWidget(title: 'Button'),
                  ));
            },
          ),
          InkWell(
            child: const FListItem(title: 'Image'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const ImageWidget(title: 'Image'),
                  ));
            },
          ),
          InkWell(
            child: const FListItem(title: 'Text'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const TextWidget(title: 'Text'),
                  ));
            },
          ),
          InkWell(
            child: const FListItem(title: 'TextField'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const TextFieldWidget(title: 'TextField'),
                  ));
            },
          ),
          InkWell(
            child: const FListItem(title: 'AppBar'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const AppBarWidget(title: 'AppBar'),
                  ));
            },
          ),
          InkWell(
            child: const FListItem(title: 'Tabs'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const TabsWidget(title: 'Tabs'),
                  ));
            },
          ),
          InkWell(
            child: const FListItem(title: 'Drawer'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const DrawerWidget(title: 'Drawer'),
                  ));
            },
          ),
          InkWell(
            child: const FListItem(title: 'BottomSheet'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const BottomSheetWidget(title: 'BottomSheet'),
                  ));
            },
          ),
          InkWell(
            child: const FListItem(title: 'Dialog'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const DialogWidget(title: 'Dialog'),
                  ));
            },
          ),
          InkWell(
            child: const FListItem(title: 'ProgressBar'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const ProgressBarWidget(title: 'ProgressBar'),
                  ));
            },
          ),
          InkWell(
            child: const FListItem(title: 'SnackBar'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const SnackBarWidget(title: 'SnackBar'),
                  ));
            },
          ),
          InkWell(
            child: const FListItem(title: 'Radio'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const RadioWidget(title: 'Radio'),
                  ));
            },
          ),
          InkWell(
            child: const FListItem(title: 'Switch'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const SwitchWidget(title: 'Switch'),
                  ));
            },
          ),
          InkWell(
            child: const FListItem(title: 'CheckBox'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const CheckBoxWidget(title: 'CheckBox'),
                  ));
            },
          ),
          InkWell(
            child: const FListItem(title: 'Slide'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  CupertinoPageRoute(
                    builder: (BuildContext context) =>
                        const SliderWidget(title: 'Slide'),
                  ));
            },
          ),

          InkWell(
            child: const FListItem(title: 'Shape'),
            onTap: () {
              Navigator.push(
                  widget.parentContext,
                  CupertinoPageRoute(
                    builder: (BuildContext context) =>
                    const ShapeWidget(title: 'Shape'),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
