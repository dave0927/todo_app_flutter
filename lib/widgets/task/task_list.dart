import 'package:flutter/material.dart';
import 'package:todo_app_flutter/components/constants.dart';
import 'package:todo_app_flutter/widgets/add_item.dart';

class TaskList extends StatelessWidget {
  const TaskList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 4,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: Colors.transparent,
          bottomSheet: TabBar(tabs: kBottomSheetTextItems),
          body: TabBarView(children: pages),
          floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
          floatingActionButton: const AddItem(),
        ),
      ),
    );
  }
}
