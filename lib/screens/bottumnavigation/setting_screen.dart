import 'package:flutter/material.dart';
import 'package:musicrythum/widgets/widget_apps.dart';

class Settings
// extends StatefulWidget {
//   const Settings({Key? key}) : super(key: key);

//   @override
//   State<Settings> createState() => _SettingsScreen();
// } // dragStartBehavior: DragStartBehavior.down,

// class _SettingsScreen extends State<Settings> {
//   bool value1 = false;
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(left: 40),
//       child: Switch.adaptive(
//           value: value1,
//           onChanged: (value) => setState(() {
//                 value1 = value;
//               })),
//     );
//   }
// }

{
  showOptions(BuildContext context) {
    showModalBottomSheet(
      isDismissible: false,
      //enableDrag: false,
      context: context,
      builder: (ctx) => DraggableScrollableSheet(
          initialChildSize: .7,
          maxChildSize: 1,
          minChildSize: 0.4,
          builder: (_, controller) => SizedBox(
                width: double.infinity,
                height: MediaQuery.of(context).size.height,
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: ListView.builder(
                    itemCount: 5,
                    itemBuilder: (BuildContext context, drowerIndex) {
                      return (drowerIndex == 4)
                          ? const Center(
                              child: Text(
                                'Version\n  1.000',
                                style: TextStyle(color: Colors.grey),
                              ),
                            )
                          : ListTile(
                              title:
                                  Text(WidgetApps().settingField[drowerIndex]),
                              trailing: Icon(
                                  WidgetApps().settingFieldIcons[drowerIndex]),
                              onTap: () {
                                // print('onTap : ${WidgetApps().drowerField[drowerIndex]}');
                              },
                            );
                    },
                  ),
                ),
              )),
    );
  }

  // bottomSheetDatas({
  //   required String title,
  //   required IconData iconData,
  //   Function(String)? ontap,
  // }) {
  //   return ListTile(
  //     title: Text(
  //       title,
  //       style: const TextStyle(
  //           color: Colors.black, fontFamily: 'BalsamiqSans_Regular'),
  //     ),
  //     trailing: Icon(iconData, color: Colors.black),
  //     onTap: () => ontap?.call(title),
  //   );
  // }

}
