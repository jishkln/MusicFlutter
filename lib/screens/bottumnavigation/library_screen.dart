import 'package:flutter/material.dart';
import 'package:musicrythum/widgets/text_widget.dart';
import 'package:musicrythum/widgets/widget_apps.dart';

class LibraryScreen extends StatelessWidget {
  const LibraryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WidgetApps.bckColor,
      appBar: AppBar(
        backgroundColor: WidgetApps.appBarColor,
        title: Text(
          'Library',
          style: TextStyles().titleStyle(
            sizeFont: 65,
            textGradiantColor1: const Color.fromARGB(255, 223, 202, 202),
            textGradiantColor2: const Color.fromARGB(169, 15, 11, 11),
          ),
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 18.0, right: 18, top: 55),
          child: GridView.builder(
            itemCount: 7,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 13,
              mainAxisSpacing: 15,
              childAspectRatio: MediaQuery.of(context).size.width /
                  (MediaQuery.of(context).size.height / 3),
            ),
            itemBuilder: (BuildContext context, index) {
              return GridTile(
                header: Center(
                    child: (index >= 4)
                        ? Text(
                            WidgetApps().libraryField[index],
                            style: TextStyles().titleStyle(
                              sizeFont: 30,
                              textGradiantColor1:
                                  const Color.fromARGB(255, 250, 250, 250),
                              textGradiantColor2:
                                  const Color.fromARGB(169, 15, 11, 11),
                            ),
                          )
                        : null),
                child: Card(
                  color: WidgetApps.bckColor,
                  elevation: 4,
                  shadowColor: const Color.fromARGB(255, 255, 190, 190),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: GestureDetector(
                    onTap: () {
                      Navigator.of(context).push(
                        MaterialPageRoute(
                            builder: (context) => WidgetApps().rootName[index]),
                      );
                      //print('onClicked : ${WidgetApps().libraryField[index]}');
                    },
                    child: Container(
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: const BorderRadius.all(
                          Radius.circular(20),
                        ),
                        image: DecorationImage(
                            image: AssetImage(
                              WidgetApps().imgLib[index],
                            ),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
