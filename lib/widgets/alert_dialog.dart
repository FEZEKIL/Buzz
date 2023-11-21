import 'package:flutter/cupertino.dart';

import '../consts/constants.dart';


class MyAlertDialog{
  static void showMyDialog ({required BuildContext context,
   required String title,
   required String content,
    required Function() tabNo, required Function() tabYes, }){
              showCupertinoDialog<void>(
                                context: context,
                                builder: (BuildContext context) => CupertinoAlertDialog( 
                                  title:  Text(title),
                                  content:  Text(content),
                                  actions: <CupertinoDialogAction>[
                                    CupertinoDialogAction(
                                      onPressed: tabNo,
                                      child:const Text('No',
                                      selectionColor: primaryColor,
                                      ),
                                     ),
                                     CupertinoDialogAction(
                                      isDestructiveAction: true,
                                      onPressed: tabYes,
                                      child: const Text('Yes',
                                      selectionColor: primaryColor,
                                      ),
                                    ),
                                  ],
                                ),
                           );
  }
}
