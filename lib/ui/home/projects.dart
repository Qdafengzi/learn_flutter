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
  final parentContext;

  const Projects(this.parentContext, {super.key});

  @override
  State<Projects> createState() => _ProjectsState();
}

class _ProjectsState extends State<Projects> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Learning Project',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ProjectHome(widget.parentContext),
    );
  }
}

class ProjectHome extends StatefulWidget {
  const ProjectHome(this.parentContext, {super.key});
  final parentContext;

  @override
  State<ProjectHome> createState() => _ProjectHomeState();
}

class _ProjectHomeState extends State<ProjectHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Projects"),
        toolbarHeight: 44,
        backgroundColor: Theme.of(context).secondaryHeaderColor,
      ),
      body: ListView(
        padding: const EdgeInsets.fromLTRB(10, 4, 10, 4),
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

        ],
      ),
    );
  }
}
