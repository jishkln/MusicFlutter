import 'package:flutter/material.dart';
import 'package:musicrythum/screens/play_screen.dart';
import 'package:musicrythum/widgets/widget_apps.dart';

class PlayList1 extends StatelessWidget {
  const PlayList1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: WidgetApps.bckColor,
      body: SafeArea(
        child: ListView(
          physics: const AlwaysScrollableScrollPhysics(),
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Color.fromARGB(255, 0, 255, 34),
                    Color.fromARGB(255, 188, 174, 174),
                    // Color.fromARGB(193, 183, 72, 12),
                  ],
                ),
                image: DecorationImage(
                    image: AssetImage(WidgetApps().gifSubScreen[1]),
                    fit: BoxFit.cover),
                borderRadius: const BorderRadius.only(
                  bottomRight: Radius.circular(150),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  // Text(
                  //   'Resently Played',
                  //   style: TextStyles().titleStyle(
                  //     sizeFont: 60.00,
                  //     textGradiantColor1: const Color.fromARGB(255, 95, 76, 76),
                  //     textGradiantColor2:
                  //         const Color.fromARGB(169, 170, 18, 18),
                  //   ),
                  // ),

                  const SizedBox(
                    height: 85,
                  ),
                  Row(
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(
                          Icons.play_circle_filled,
                          size: 80,
                          color: Colors.black,
                        ),
                      ),
                      const SizedBox(
                        width: 30,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const Icon(Icons.shuffle_rounded),
                        color: Colors.black,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              scrollDirection: Axis.vertical,
              itemCount: 20,
              itemBuilder: (BuildContext context, index) {
                return Card(
                  child: ListTile(
                    leading: const CircleAvatar(
                      radius: 30,
                      backgroundColor: Colors.grey,
                    ),
                    title: Text('$index'),
                    subtitle: Text('Subtitle $index'),
                    trailing: IconButton(
                      onPressed: () {
                        //print('button');
                      },
                      icon: const Icon(Icons.favorite),
                    ),
                    onTap: () {
                      //print('list');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PlayScreen()),
                      );
                    },
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
