import 'package:bookcase/src/models/plan_item_model.dart';
import 'package:flutter/material.dart';

class PlanTile extends StatelessWidget {
  final PlanItemModel planItem;

  const PlanTile({Key? key, required this.planItem}) : super(key: key);

  get onChecked => false;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.fromLTRB(10, 10, 10, 0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: ListTile(
        leading: const Icon(Icons.check_box_outline_blank_outlined),
/*      leading: Checkbox(
            checkColor: Colors.white,
            value: onChecked,
            onChanged: (bool? value) {
              State.setState(() {
                onChecked = value!;
              });
            }),
*/
        title: Center(child: Text(planItem.item.itemName)),
        subtitle: Center(child: Text(planItem.date)),
      ),
    );
  }
}
