import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          AppBar(
            primary: false,
            title: const Text(
              'Watches',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
            centerTitle: true,
            leading: const Icon(
              Icons.menu,
              color: Colors.black,
            ),
            actions: const [
              Icon(
                Icons.search,
                color: Colors.black,
              ),
              SizedBox(width: 15)
            ],
            backgroundColor: Colors.transparent,
            elevation: 0,
          ),
          Expanded(
            flex: 2,
            child: PageView.builder(
              controller: PageController(
                viewportFraction: 0.8,
                initialPage: 1,
              ),
              padEnds: false,
              itemCount: 3,
              itemBuilder: (BuildContext context, int index) {
                int i = index + 1;
                return Center(
                  child: Container(
                    color: Colors.red,
                    height: 320,
                    width: 280,
                    child: Stack(
                      children: [
                        Image.asset('image_$i.png'),
                        Positioned(
                          bottom: 25,
                          left: 30,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'EKHOLM',
                                style: TextStyle(color: Colors.white),
                              ),
                              Text(
                                '\$249',
                                style: TextStyle(color: Colors.white),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 20,
                vertical: 20,
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: const [
                      Text(
                        'Discover',
                        style: TextStyle(),
                      ),
                      Icon(Icons.remove),
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    color: Colors.grey[200],
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('watch_1.png'),
                            const SizedBox(width: 20),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'ORMOUS',
                                  style: TextStyle(),
                                ),
                                Text(
                                  'white, size L',
                                  style: TextStyle(),
                                )
                              ],
                            ),
                          ],
                        ),
                        const Text(
                          '\$249',
                          style: TextStyle(),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    width: double.infinity,
                    color: Colors.grey[200],
                    padding: const EdgeInsets.symmetric(
                      horizontal: 5,
                      vertical: 5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset('watch_2.png'),
                            const SizedBox(width: 20),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  'HISAKO',
                                  style: TextStyle(),
                                ),
                                Text(
                                  'white, size L',
                                  style: TextStyle(),
                                )
                              ],
                            ),
                          ],
                        ),
                        const Text(
                          '\$249',
                          style: TextStyle(),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
