import 'package:flutter/material.dart';

class BioCard extends StatelessWidget {
  const BioCard({
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
  final double marginBottom;
  final void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
        // side: BorderSide(
        //   color: Colors.blue,
        //   width: 1,
        // ),
      ),
      margin:
          EdgeInsetsDirectional.only(start: 20, end: 20, bottom: marginBottom),
      child: ListTile(
        leading: Icon(
          leadingIcon,
          color: Colors.black,
        ),
        title: Text(
          title,
          style: TextStyle(
            fontFamily: 'SourceSansPro',
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          subTitle,
          style: TextStyle(
            fontFamily: 'SourceSansPro',
          ),
        ),
        trailing: IconButton(
          // onPressed: () {
          //
          // },
          onPressed: onPressed,
          icon: Icon(
            trailingIcon,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
