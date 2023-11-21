 import 'package:flutter/material.dart';

import '../consts/global_variables.dart';
import '../pages/categories_lists.dart';


 class TopCategories extends StatelessWidget {
  const TopCategories({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        itemCount: GlobalVariables.categoryImages.length,
        scrollDirection: Axis.horizontal,
        itemExtent: 69,
        itemBuilder: (context, index){
         return GestureDetector(
          onTap: (){
           Navigator.push(context,MaterialPageRoute(builder: (context) => const CategoryLits() ));
          },
           child: Column(
            children: [
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset(GlobalVariables.categoryImages[index]['image']!,
                  fit: BoxFit.cover,
                  height: 60,
                  width: 60,
                  ),
                ),
              ),
              const SizedBox(height: 10,),
              Text(GlobalVariables.categoryImages[index]['title']!,
              style: const TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.w500
              ),
              )
            ],
           ),
         );
      } ),
    );
  }



// import '../consts/global_variables.dart';
// import '../models/buzz.dart';

// class TopCategory extends StatelessWidget {
//   const TopCategory ({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return GridView.builder(
//       physics: const NeverScrollableScrollPhysics(),
//       shrinkWrap: true,
//       gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
//         crossAxisCount: 4,
//         mainAxisSpacing: 8,
//       ),
//       padding: EdgeInsets.zero,
//       itemCount: GlobalVariables.categoryImages.length,
//       itemBuilder: (BuildContext context, index) {
//         return GestureDetector(
//           child: Container(
//             constraints: const BoxConstraints(
//               maxHeight: 80,
//             ),
//             child: Column(
//               children: [
//                    Container(
//                     constraints: BoxConstraints(
//                     minHeight: 55,
//                     minWidth: 55,
//                     maxHeight: 65,
//                     maxWidth: 65,
//                       ),
//                       decoration: BoxDecoration(
//                         borderRadius: BorderRadius.circular(12),
//                         image: DecorationImage(
//                           image: AssetImage('assets/images/coffee-cup1.jpg',)
//                           , fit: BoxFit.cover
//                         ),  
                        
//                       ), 
//                     ),
                    
                    
//                 const SizedBox(
//                   height: 4,
//                 ),
//                 Expanded(
//                   child: Text(
//                     businessMenu[index].name,
//                     style: Theme.of(context).textTheme.bodyMedium,
                    
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }
 }