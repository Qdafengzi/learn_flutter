import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:learn_flutter/ui/widget/AppBarWidget.dart';
import 'package:learn_flutter/ui/widget/ButtonWidget.dart';
import 'package:learn_flutter/ui/widget/DialogWidget.dart';
import 'package:learn_flutter/ui/widget/DrawerWidget.dart';
import 'package:learn_flutter/ui/widget/FlexWidget.dart';
import 'package:learn_flutter/ui/widget/ImageWidget.dart';
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
import '../widget/TextWidget.dart';

class Widgets extends StatefulWidget {
  const Widgets({super.key});

  @override
  State<Widgets> createState() => _WidgetsState();
}

class _WidgetsState extends State<Widgets> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learning',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const WidgetHome(),
    );
  }
}

class WidgetHome extends StatefulWidget {
  const WidgetHome({super.key});

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
        backgroundColor: Colors.blueGrey,
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
        children: <Widget>[
          ListTile(
            title: const WidgetsListItem(title: 'Column'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const ColumnWidget(title: 'Column'),
                  ));
            },
          ),
          ListTile(
            title: const WidgetsListItem(title: 'Rom'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const RowWidget(title: 'Row'),
                  ));
            },
          ),
          ListTile(
            title: const WidgetsListItem(title: 'Flex Expanded'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const FlexWidget(title: 'Flex Expanded'),
                  ));
            },
          ),
          ListTile(
            title: const WidgetsListItem(title: 'Wrap'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const WrapWidget(title: 'Wrap'),
                  ));
            },
          ),
          ListTile(
            title: const WidgetsListItem(title: 'Stack'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const StackWidget(title: 'Stack'),
                  ));
            },
          ),
          ListTile(
            title: const WidgetsListItem(title: 'Padding and Margin'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const PaddingWidget(title: 'Padding and Margin'),
                  ));
            },
          ),
          ListTile(
            title: const WidgetsListItem(title: 'List'),
            onTap: () {},
          ),
          ListTile(
            title: const WidgetsListItem(title: 'Button'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const ButtonWidget(title: 'Button'),
                  ));
            },
          ),
          ListTile(
            title: const WidgetsListItem(title: 'Image'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const ImageWidget(title: 'Image'),
                  ));
            },
          ),
          ListTile(
            title: const WidgetsListItem(title: 'Text'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const TextWidget(title: 'Text'),
                  ));
            },
          ),
          ListTile(
            title: const WidgetsListItem(title: 'TextField'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const TextFieldWidget(title: 'TextField'),
                  ));
            },
          ),
          ListTile(
            title: const WidgetsListItem(title: 'AppBar'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const AppBarWidget(title: 'AppBar'),
                  ));
            },
          ),
          ListTile(
            title: const WidgetsListItem(title: 'Tabs'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const TabsWidget(title: 'Tabs'),
                  ));
            },
          ),
          ListTile(
            title: const WidgetsListItem(title: 'Drawer'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const DrawerWidget(title: 'Drawer'),
                  ));
            },
          ),
          ListTile(
            title: const WidgetsListItem(title: 'BottomSheet'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const BottomSheetWidget(title: 'BottomSheet'),
                  ));
            },
          ),
          ListTile(
            title: const WidgetsListItem(title: 'Dialog'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const DialogWidget(title: 'Dialog'),
                  ));
            },
          ),
          ListTile(
            title: const WidgetsListItem(title: 'ProgressBar'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const ProgressBarWidget(title: 'ProgressBar'),
                  ));
            },
          ),
          ListTile(
            title: const WidgetsListItem(title: 'SnackBar'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const SnackBarWidget(title: 'SnackBar'),
                  ));
            },
          ),
          ListTile(
            title: const WidgetsListItem(title: 'Radio'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const RadioWidget(title: 'Radio'),
                  ));
            },
          ),
          ListTile(
            title: const WidgetsListItem(title: 'Switch'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const SwitchWidget(title: 'Switch'),
                  ));
            },
          ),
          ListTile(
            title: const WidgetsListItem(title: 'CheckBox'),
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) =>
                        const CheckBoxWidget(title: 'CheckBox'),
                  ));
            },
          ),
          ListTile(
            title: const WidgetsListItem(title: 'Slide'),
            onTap: () {
              Navigator.push(
                  context,
                  CupertinoPageRoute(
                    builder: (BuildContext context) =>
                        const SliderWidget(title: 'Slide'),
                  ));
            },
          ),
        ],
      ),
    );
  }
}
