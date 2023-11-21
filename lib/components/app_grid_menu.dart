import 'package:flutter/material.dart';





import '../categories_screens/automotiv_screen.dart';
import '../categories_screens/beauty_salon_screen.dart';
import '../categories_screens/butchery_screen.dart';
import '../categories_screens/capentry_screen.dart';
import '../categories_screens/carwash_screen.dart';
import '../categories_screens/dental_screen.dart';
import '../categories_screens/more_screen.dart';
import '../categories_screens/restaurent_screen.dart';
import '../models/buzz.dart';

List<String> label = [
  'Restaurent' ,
  'Dental',
  'Automotive',
  'Beauty Salon',
  'Butchery',
  'Car Wash',
  'Capentry'
  'More'
];

List<Widget> pages =  [
   const RestaurentScreen(),
   const DentalScreen(),
   const AutomotiveScreen(),
   const BeautySalonScreen(),
   const ButcheryScreen(),
   const CarWashScreen(),
   const CapentryScreen(),
   const MoreScreen()
];




class AppGridMenu extends StatelessWidget {
  const AppGridMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      physics: const ScrollPhysics(),
      shrinkWrap: true,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        mainAxisSpacing: 8,
      ),
      padding: EdgeInsets.zero,
      itemCount: businessMenu.length,
      itemBuilder: (BuildContext context, index) {
        return InkWell(
          onTap: () {
         // Navigator.push(context, MaterialPageRoute(builder: (context) => pages[index]));  
          },
          child: Container(
            constraints: const BoxConstraints(
              maxHeight: 80,
            ),
            child: Column(
              children: [
                   Container(
                    constraints: const BoxConstraints(
                    minHeight: 55,
                    minWidth: 55,
                    maxHeight: 65,
                    maxWidth: 65,
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                        image: DecorationImage(
                          image: AssetImage(
                            'assets/images/icons/${businessMenu[index].image}'
                          ), fit: BoxFit.cover
                        ),   
                      ), 
                    ),  
                const SizedBox(
                  height: 4,
                ),
                Expanded(
                  child: Text(
                    businessMenu[index].name,
                    style: const TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500
                    ),
                    
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
