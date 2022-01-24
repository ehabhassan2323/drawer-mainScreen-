 import 'package:flutter/material.dart';


 Color primaryGreen = Color(0xff416d6d);

 List<BoxShadow> shadowList = [
   BoxShadow(color: Colors.grey[300]!, blurRadius: 30, offset: Offset(0, 10))
 ];

List<Map> categories  = [
   {'name' :'Cats' , 'pathIcon' : 'assets/cat.png'},
   {'name' :'Dogs' , 'pathIcon' : 'assets/dog.png'},
   {'name' :'Bunnies' , 'pathIcon' : 'assets/rabbit.png'},
   {'name' :'Parrots' , 'pathIcon' : 'assets/parrot.png'},
   {'name' :'Horses' , 'pathIcon' : 'assets/horse.png'},
 ];


 List<Map> drawerItems=[
   {
     'icon':  Icons.family_restroom,
     'title' : 'Adoption'
   },
   {
     'icon': Icons.mail,
     'title' : 'Donation'
   },
   {
     'icon':  Icons.add,
     'title' : 'Add pet'
   },
   {
     'icon': Icons.favorite,
     'title' : 'Favorites'
   },
   {
     'icon': Icons.mail,
     'title' : 'Messages'
   },
   {
     'icon':  Icons.person,
     'title' : 'Profile'
   },
 ];