import 'package:bookcase/src/pages/plan/components/plan_modal_add.dart';
import 'package:bookcase/src/pages/plan/components/plan_tile.dart';
import 'package:flutter/material.dart';
import 'package:bookcase/src/config/app_data.dart' as appData;
import 'package:modal_bottom_sheet/modal_bottom_sheet.dart';

import '../../config/custom_colors.dart';

class PlanTab extends StatefulWidget {
  const PlanTab({Key? key}) : super(key: key);

  @override
  State<PlanTab> createState() => _PlanTabState();
}

class _PlanTabState extends State<PlanTab> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: appData.planItems.length,
              itemBuilder: (_, index) {
                return PlanTile(planItem: appData.planItems[index]);
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(0, 0, 25, 25),
            alignment: Alignment.bottomRight,
            child: IconButton(
              onPressed: () {
                // return showBarModalBottomSheet(
                //     context: context, builder: (context) => PlanModalAdd());
              },
              icon: Icon(
                Icons.add_circle,
                color: CustomColor.customSwatchColor,
                size: 60,
                shadows: const [
                  BoxShadow(
                    color: Colors.grey,
                    blurRadius: 5,
                    spreadRadius: 4,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
