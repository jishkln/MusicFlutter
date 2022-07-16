import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:on_audio_query/on_audio_query.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:musicrythum/screens/play_screen.dart';
import 'package:musicrythum/screens/search_screen.dart';
import 'package:musicrythum/widgets/text_widget.dart';
import 'package:musicrythum/widgets/widget_apps.dart';
import 'package:just_audio/just_audio.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _audioQuery = OnAudioQuery();

  final _audioPlayer = AudioPlayer();

  playSongs(String? uri) {
    try {
      _audioPlayer.setAudioSource(
        AudioSource.uri(
          Uri.parse(uri!),
        ),
      );
      _audioPlayer.play();
    } on Exception {
      log("error passing Song");
    }
  }

  @override
  void initState() {
    super.initState();
    requestPermission();
  }

  void requestPermission() {
    Permission.storage.request();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: WidgetApps.bckColor,
        appBar: AppBar(
          backgroundColor: WidgetApps.appBarColor,
          centerTitle: true,
          title: Text(
            'Rythum',
            style: TextStyles().titleStyle(
              sizeFont: 45,
              textGradiantColor1: const Color.fromARGB(255, 219, 93, 93),
              textGradiantColor2: const Color.fromARGB(169, 255, 255, 255),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 20),
              child: IconButton(
                onPressed: () {
                  showSearch(
                      context: context,
                      // delegate to customize the search bar
                      delegate: CustomSearchDelegate());
                },
                icon: const Icon(Icons.search),
              ),
            ),
          ],
        ),
        body: FutureBuilder<List<SongModel>>(
            future: _audioQuery.querySongs(
              sortType: null,
              orderType: OrderType.ASC_OR_SMALLER,
              uriType: UriType.EXTERNAL,
              ignoreCase: true,
            ),
            builder: (context, item) {
              if (item.data == null) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              }
              if (item.data!.isEmpty) {
                return const Center(
                  child: Text("No songs Founf"),
                );
              }
              return SafeArea(
                child: ListView(
                  //shrinkWrap: true,
                  physics: const AlwaysScrollableScrollPhysics(),
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.only(top: 30, left: 10, right: 10),
                      //color: Colors.blue,
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height / 3,
                      child: GridView.builder(
                        itemCount: 4,
                        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 2,
                          crossAxisSpacing: 4,
                          mainAxisSpacing: 4,
                          childAspectRatio: MediaQuery.of(context).size.width /
                              (MediaQuery.of(context).size.height / 3.19),
                        ),
                        itemBuilder: (BuildContext context, index) {
                          return GridTile(
                            child: Card(
                              color: WidgetApps.bckColor,
                              elevation: 4,
                              shadowColor:
                                  const Color.fromARGB(255, 255, 190, 190),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            WidgetApps().rootName[index]),
                                  );
                                },
                                child: Container(
                                  padding: const EdgeInsets.only(right: 10),
                                  decoration: BoxDecoration(
                                    color: const Color.fromARGB(
                                        255, 141, 137, 137),
                                    borderRadius: const BorderRadius.all(
                                      Radius.circular(20),
                                    ),
                                    image: DecorationImage(
                                        image: AssetImage(
                                            WidgetApps().imgHomeGrid[index]),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          right: 10, left: 10, bottom: 10),
                      child: Text(
                        'All Songs',
                        style: TextStyles().titleStyle(
                          sizeFont: 35,
                          textGradiantColor1:
                              const Color.fromARGB(255, 255, 255, 255),
                          textGradiantColor2:
                              const Color.fromARGB(169, 15, 11, 11),
                        ),
                      ),
                    ),
                    ListView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      itemCount: item.data!.length,
                      itemBuilder: (BuildContext context, allSongIndex) {
                        return Card(
                          child: ListTile(
                            contentPadding:
                                const EdgeInsets.symmetric(horizontal: 5),
                            leading: const CircleAvatar(
                              radius: 30,
                              backgroundColor: Colors.grey,
                            ),
                            title: Text(
                              item.data![allSongIndex].displayNameWOExt,
                              overflow: TextOverflow.ellipsis,
                            ),
                            subtitle:
                                Text('  ${item.data![allSongIndex].artist}'),
                            trailing: Wrap(
                              children: [
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.favorite),
                                ),
                                IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.more_vert_rounded),
                                )
                              ],
                            ),
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const PlayScreen()),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ],
                ),
              );
            }));
  }
}
// Future<List<SongModel>>(
//         future:_audioQuery.querySongs(
//           sortType: null,
//           orderType: OrderType.ASC_OR_SMALLER,
//           uriType: UriType.EXTERNAL,
//           ignoreCase: true,
//         ),
//         build(context,item){
//           if(item.data==null){
//             return Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//           if(item.data.isEmpty){
//             return Center(child: Text("No songs Founf"),);

//           }
//           return Container();
//         }
//          ),

 