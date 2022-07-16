import 'package:flutter/material.dart';

class PlayScreen extends StatelessWidget {
  const PlayScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double currentSliderValue = 20;
    return Scaffold(
      // backgroundColor: Colors.amber,
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          width: double.infinity,
          color: Colors.black,
          child: SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 0.0, right: 8, top: 4),
                  child: Row(
                    children: [
                      Expanded(
                        child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: const Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 7,
                        child: Center(
                          child: Text(
                            'Now Playing',
                            style: TextStyle(color: Colors.white, fontSize: 25),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.symmetric(vertical: 10),
                  // padding: const EdgeInsets.all(10),
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 2,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(30),
                    ),
                    image: DecorationImage(
                      image: AssetImage('asset/images/leady.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                ListTile(
                  title: const Text(
                    'Song Name..',
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  subtitle: const Text(
                    'Singer Name...',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.favorite,
                      color: Colors.white,
                    ),
                  ),
                ),
                Slider(
                  value: currentSliderValue,
                  activeColor: Colors.red,
                  max: 100,
                  label: currentSliderValue.round().toString(),
                  onChanged: (double value) {
                    // setState(() {
                    //   _currentSliderValue = value;
                    // });
                  },
                ),
                const ListTile(
                  leading: Text(
                    '1.02',
                    style: TextStyle(color: Colors.white),
                  ),
                  trailing: Text(
                    '4.00',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Row(
                  children: const [
                    Expanded(
                      child: Icon(
                        Icons.shuffle,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.skip_previous,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.play_circle_filled,
                        color: Colors.white,
                        size: 35,
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.skip_next,
                        color: Colors.white,
                      ),
                    ),
                    Expanded(
                      child: Icon(
                        Icons.loop,
                        color: Colors.white,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
