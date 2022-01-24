import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'config.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: primaryGreen,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 50, horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  backgroundImage: AssetImage("assets/me.jpg"),
                  radius: 30,
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  children: [
                    Text(
                      'Ehab hassan',
                      style:
                          TextStyle(fontSize: 15, fontWeight: FontWeight.bold,color: Colors.white),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Row(
                      children: [
                        Container(
                          height: 6,
                          width: 6,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle, color: Colors.green),
                        ),
                        SizedBox(
                          width: 3,
                        ),
                        Text('active status', style: TextStyle(color: Colors.white)),
                      ],
                    ),
                  ],
                ),
              ],
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) => InkWell(
                  onTap: (){
                    print ('hello papy');
                  },
                  child: ListTile(
                    title: Text(drawerItems[index]['title'],style: TextStyle(color:Colors.white),),
                    leading: Icon(drawerItems[index]['icon'],color: Colors.white,),
                  ),
                ),
                itemCount: drawerItems.length,
              ),
            ),
            Row(
              children: [
                ElevatedButton(style: TextButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                  ),
                    onPressed: (){},
                    child: Row(
                      children: [
                        Icon(Icons.settings, color: Colors.white60,size: 30,),
                        SizedBox(width: 15,),
                        Text('Settings'),
                        SizedBox(width: 20,),
                      ],
                    ),
                ),
                Container(
                  width: 2,
                  height: 35,
                  color: Colors.white,
                ),

                ElevatedButton(style: TextButton.styleFrom(
                  backgroundColor: Colors.transparent,
                  elevation: 0,
                ),
                  onPressed: (){},
                  child: Row(
                    children: [
                      Icon(Icons.login_outlined, color: Colors.white60,size: 30,),
                      SizedBox(width: 15,),
                      Text('Log out'),
                      SizedBox(width: 20,),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
