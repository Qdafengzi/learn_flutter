import 'package:flutter/material.dart';
import 'package:learn_flutter/ui/widget/FlexWidget.dart';
import 'package:learn_flutter/ui/widget/PaddingWidget.dart';
import 'package:learn_flutter/ui/widget/RowWidget.dart';
import 'package:learn_flutter/ui/widget/StackWidget.dart';
import 'package:learn_flutter/ui/widget/WrapWidget.dart';
import '../../widgets/WidgetsListItem.dart';
import '../common/CommonPage.dart';
import '../widget/ColumnWidget.dart';

class Projects extends StatefulWidget {
  const Projects({super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
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
            onTap: () {},
          ),
          ListTile(
            title: const WidgetsListItem(title: 'Image'),
            onTap: () {},
          ),
          ListTile(
            title: const WidgetsListItem(title: 'Text'),
            onTap: () {},
          ),
          ListTile(
            title: const WidgetsListItem(title: 'TextField'),
            onTap: () {},
          ),
          ListTile(
            title: const WidgetsListItem(title: 'AppBar'),
            onTap: () {},
          ),
          ListTile(
            title: const WidgetsListItem(title: 'Tabs'),
            onTap: () {},
          ),
          ListTile(
            title: const WidgetsListItem(title: 'Drawer'),
            onTap: () {},
          ),
          ListTile(
            title: const WidgetsListItem(title: 'BottomSheet'),
            onTap: () {},
          ),
          ListTile(
            title: const WidgetsListItem(title: 'Dialog'),
            onTap: () {},
          ),
          ListTile(
            title: const WidgetsListItem(title: 'Popub'),
            onTap: () {},
          ),
          ListTile(
            title: const WidgetsListItem(title: 'ProgressBar'),
            onTap: () {},
          ),
          ListTile(
            title: const WidgetsListItem(title: 'SnackBar'),
            onTap: () {},
          ),
          ListTile(
            title: const WidgetsListItem(title: 'Radio'),
            onTap: () {},
          ),
          ListTile(
            title: const WidgetsListItem(title: 'RadioButton'),
            onTap: () {},
          ),
          ListTile(
            title: const WidgetsListItem(title: 'Switch'),
            onTap: () {},
          ),
          ListTile(
            title: const WidgetsListItem(title: 'CheckBox'),
            onTap: () {},
          ),
          ListTile(
            title: const WidgetsListItem(title: 'Slide'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
