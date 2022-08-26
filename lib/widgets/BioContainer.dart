import 'package:flutter/material.dart';

class BioContainer extends StatelessWidget {
  const BioContainer({
    Key? key,
    required this.leadingIcon,
    required this.title,
    required this.subTitle,
    required this.trailingIcon,
    required this.onPressed,
    this.marginBottom = 0,

  }) : super(key: key);
  final IconData leadingIcon;
  final String title;
  final String subTitle;
  final IconData trailingIcon;
  final void Function() onPressed;
  final double marginBottom;


  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsetsDirectional.only(start: 20,end: 20,bottom: marginBottom),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            // BoxShadow(
            //   color: Colors.green,
            //   offset: Offset(0,4),
            //   blurRadius: 4,
            //
            // ),
            //   BoxShadow(
            //     color: Colors.green,
            //     offset: Offset(-3, 0),
            //     blurRadius: 5,
            //   ),
            BoxShadow(
              color: Colors.black.withAlpha(41),
              blurRadius: 6,
              offset: Offset(0, 3),
            ),
          ]),
      child: ListTile(
        leading: Icon(
          leadingIcon,
          color: Colors.black,
        ),
        title: Text(title),
        subtitle: Text(subTitle),
        trailing: Icon(trailingIcon, color: Colors.blue),
        onTap: onPressed,
      ),
    );
  }
}
