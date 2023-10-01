import 'package:flutter/material.dart';
import 'package:jarvis/shared/styles.dart';
import '../shared/colors.dart';
import '../shared/helpers.dart';
import '../../../widgets/description.dart';

class ItemExpansionTile extends StatelessWidget {
  final Map properties;
  final Map data;
  final VoidCallback deleteFunc;
  final VoidCallback updateFunc;
  final String itemName;
  final CustomTextStyle style;
  final CustomColors colorScheme;
  const ItemExpansionTile({
    Key? key,
    required this.properties,
    required this.data,
    required this.deleteFunc,
    required this.updateFunc,
    this.itemName = "",
    required this.style,
    required this.colorScheme,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var width = screenWidth(context);
    var height = screenHeight(context);
    return tileChild(height, width, false);
  }

  ExpansionTile tileChild(double height, double width, bool isTab) {
    return ExpansionTile(
      title: properties["title"] == "item"
          ? Text(
              itemName,
              style:
                  TextStyle(fontSize: isTab ? height * 0.025 : height * 0.03),
            )
          : Text(
              data["${properties["title"]}"],
              style:
                  TextStyle(fontSize: isTab ? height * 0.025 : height * 0.03),
            ),
      subtitle: Text(
        data["${properties["subtitle"]}"],
        style: TextStyle(fontSize: isTab ? height * 0.022 : height * 0.02),
      ),
      textColor: Colors.black87,
      iconColor: Colors.black87,
      expandedAlignment: Alignment.centerLeft,
      expandedCrossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ...fields(properties["entries"]),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: (() => deleteFunc()),
              icon: const Icon(Icons.delete, color: Colors.red),
            ),
            IconButton(
              onPressed: (() => updateFunc()),
              icon: const Icon(Icons.edit, color: Colors.grey),
            ),
          ],
        )
      ],
    );
  }

  List<Widget> fields(List<Map> properties) {
    List<Widget> widgets = [];
    for (int i = 0; i < properties.length; i++) {
      widgets.add(
        Description(
          property: properties[i]["fieldName"] + " : ",
          value: data["${properties[i]["fieldValue"]}"].toString(),
        ),
      );
    }
    return widgets;
  }
}
