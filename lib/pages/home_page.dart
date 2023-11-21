

import 'package:flutter/material.dart';


import '../components/business_lists.dart';
import '../consts/constants.dart';
import '../widgets/top_categories.dart';




class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:  onBackground,
      appBar: AppBar(
       backgroundColor: primaryColor,
        elevation: 0,
        leading: IconButton(onPressed: (){},
         icon: const Icon(Icons.menu,
         color: Colors.white,
         ),
         ),
       
      ),
      body: SingleChildScrollView(
        
        child: SafeArea(
          child: Column(   
            children: <Widget> [
              Container(
                width: double.infinity,

                decoration: const BoxDecoration(
                  color: primaryColor,
                  borderRadius: BorderRadius.vertical(bottom: Radius.circular(30)),
                ),
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget> [
                    const Text('Discover', 
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Comfortaa'
                    ),),
                    const SizedBox(
                      height: 5,
                    ),
                    const Text('Find the best service provider',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 20,
                    ),
                    ),
                    const SizedBox(height: 20,),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        color: const Color.fromRGBO(244, 243, 243, 1),
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: const TextField(
                        decoration: InputDecoration(
                        border: InputBorder.none,
                        prefixIcon: Icon(Icons.search,
                        color: primaryColor,
                        ),
                        hintText: "Search products or services",
                        hintStyle: TextStyle(
                          color: Colors.grey,
                          fontSize: 15,
                          fontFamily: 'Comfortaa'
                        )
                        ),
                      ), 
                    ), 
                  ],
                ),
              ),    
              
              const SizedBox(height: 20,),
            
             const Padding(
               padding: EdgeInsets.all(10.0),
               child: TopCategories(),
             ),
             
             const SizedBox(height: 15,),
             const Padding(
               padding: EdgeInsets.all(15.0),
               child: Row(
                 children: [
                   Flexible(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Popular Location',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                      ),

                        Text('Let find out what most interesting things',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black, 
                        fontWeight: FontWeight.w500
                      ),
                      ),
                    ],
                   ),
                   ),
                 ],
               ),
             ),
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: SizedBox(
                height: 150,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                  
                   popularCard('assets/images/paris.jpg'),
                   popularCard('assets/images/ships.jpg'),
                   popularCard('assets/images/location1.jpg'),
                   popularCard('assets/images/location2.jpg'),
                   popularCard('assets/images/location3.jpg'),
                   popularCard('assets/images/location4.jpg'),
                   popularCard('assets/images/location5.jpg'),
                   popularCard('assets/images/location6.jpg'),
                  ],
                ),
                ),
             ),

              const SizedBox(height: 15,),
             const Padding(
               padding: EdgeInsets.all(15.0),
               child: Row(
                 children: [
                   Flexible(child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Popular Businesses',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold
                      ),
                      ),

                        Text('What is that could happen',
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,
                      style: TextStyle(
                        fontSize: 14,
                        color: Colors.black, 
                        fontWeight: FontWeight.w500
                      ),
                      ),
                    ],
                   ),
                   ),
                 ],
               ),
             ),
              const SizedBox(height: 12,),
              const BusinessList(),
              
            ],  
   
          ),  
          ),
      )
      );
  }
}

Widget popularCard(image){
  return AspectRatio(
    aspectRatio: 2.62 / 3,
    child: Container(
      margin: const EdgeInsets.only(right: 15.0),
      decoration: BoxDecoration(
        color: primaryColor,
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(image),
        fit: BoxFit.cover,
       
        ),
       
      ),
      child: Container(
        
        decoration: BoxDecoration(
           borderRadius: BorderRadius.circular(20),
           gradient: LinearGradient( 
           begin: Alignment.bottomRight,
           stops: const [0.1, 0.9],
           colors: [ Colors.black.withOpacity(.8),
                  Colors.black.withOpacity(.1),
          ]
          ),
          
        ),
       
      ),
    ),
    );
}