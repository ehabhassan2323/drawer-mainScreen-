import 'package:decore/screens/config.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'details.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double x = 0;
  double y = 0;
  double scale = 1;
  bool isDrawnOpen = false;


  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 250),
      transform: Matrix4.translationValues(x, y, 0)..scale(scale),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(isDrawnOpen?30:0),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 50,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  isDrawnOpen
                      ? IconButton(
                          icon: Icon(
                            Icons.arrow_back,
                            size: 30,
                          ),
                          onPressed: () {
                            setState(() {
                              x = 0;
                              x = 0;
                              scale = 1;
                              isDrawnOpen = !isDrawnOpen;
                            });
                          },
                        )
                      : IconButton(
                          icon: Icon(
                            Icons.menu,
                            size: 30,
                          ),
                          onPressed: () {
                            setState(() {
                              x = 250;
                              y = 160;
                              scale = .6;
                              isDrawnOpen = !isDrawnOpen;
                            });
                          },
                        ),
                  Column(
                    children: [
                      Text('Location'),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on,
                            color: primaryGreen,
                          ),
                          Text('setra')
                        ],
                      )
                    ],
                  ),
                  CircleAvatar(
                    backgroundColor: Colors.transparent,
                    radius: 25,
                    backgroundImage: AssetImage(
                      'assets/me.jpg',
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: TextFormField(
                decoration: InputDecoration(
                  fillColor: Colors.white,
                  filled: true,
                  border: InputBorder.none,
                  label: Text(
                    'what do you want',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  prefixIcon: Icon(Icons.search),
                  suffixIcon: Icon(Icons.settings),
                ),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Container(
              height: 100,
              child: ListView.separated(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) => itemCategory(
                    categories[index]['pathIcon'],
                    categories[index]['name'],
                    index),
                separatorBuilder: (context, index) => SizedBox(
                  width: 5,
                ),
                itemCount: categories.length,
              ),
            ),
            itemProduct(
                age: 2,
                description: " beauty cat",
                location: "Riffa",
                name: 'Bosy'),
            itemProduct(age: 1.5  , description: " great cat ", location: "Hidd", name: 'Sola', color: Colors.green),
            itemProduct(age: 1.5  , description: " great cat ", location: "Hidd", name: 'Sola', color: Colors.green),
          ],
        ),
      ),
    );
  }

  Container itemProduct(
      {required String name,
      required String description,
      required double age,
      required String location,
       Color color =Colors.lightGreen ,

      }) {
    return Container(
      height: 230,
      margin: EdgeInsets.only(top: 20),
      child: InkWell(
        onTap: () {
          Navigator.of(context)
              .push(MaterialPageRoute(builder: (context) => DetailsScreen()));
        },
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: color
                      ),
                      margin: EdgeInsets.only(top: 30),
                    ),
                    Align(
                      child: Image.asset('assets/pet-cat1.png'),
                      alignment: Alignment.topCenter,
                    )
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(15),
                        topRight: Radius.circular(15),
                      ),
                      color: Colors.white),
                  margin: EdgeInsets.only(bottom: 15, top: 47),
                  padding: EdgeInsets.all(15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            name,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Spacer(),
                          Icon(Icons.female),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Text(description),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.access_alarm_outlined,
                            size: 20,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text('$age years old'),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.location_on_outlined,
                            size: 20,
                          ),
                          SizedBox(
                            width: 15,
                          ),
                          Text(location),
                        ],
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding itemCategory(String image, String name, index) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: InkWell(
        onTap: () {},
        child: Column(
          children: [
            Container(
              height: 70,
              width: 65,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  color: Colors.grey[300],
                  image: DecorationImage(
                    image: AssetImage(image),
                  )),
            ),
            SizedBox(
              height: 5,
            ),
            Text(name)
          ],
        ),
      ),
    );
  }
}
