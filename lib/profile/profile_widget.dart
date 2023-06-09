import 'package:flutter/material.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';

class ProfileWidget extends StatelessWidget {
  final String imagePath;
final VoidCallback onClicked;
  const ProfileWidget({
    super.key, 
    required this.imagePath, 
    required this.onClicked});

  @override
  Widget build(BuildContext context) {
   final color=Colors.teal.shade400;

   return Center(
    child: Stack(children:[ 
      buildImage(),
      Positioned(
        bottom: 0,
        right: 4,
        child: buildEditIcon(color)),
      ]),

   );
  }
  Widget buildImage(){
    final image= AssetImage(imagePath);
    return ClipOval(
      child: Material(
        color: Colors.transparent,
        child: Ink.image(image: image,
                fit: BoxFit.cover,
                width: 160,
                height: 160,
                child: InkWell(
                  onTap: onClicked
        ),),
      ),
    );

  }
  Widget buildEditIcon(Color color){
    return buildCircle(
      color:Colors.white,
      all:3,
      child: buildCircle(
        color:color,
        all:8,
        child: Icon(Icons.edit,
        size: 20,
        color: Colors.white,),
      ),
    );

  }
  Widget buildCircle({
    required Widget child,
    required double all,
    required Color color,
    
  }){
    return ClipOval(
      child: Container(
        padding: EdgeInsets.all(all),
        child: child,
        color: color,
      ),
    );
  }
}