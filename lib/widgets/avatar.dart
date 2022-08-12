import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

Widget avatar(String url){
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: ClipRRect(
      borderRadius: BorderRadius.circular(60),
      child: Container(
        width: 50,
        height: 50,
        color: Colors.blue,
        child: url != ""
            ? Image.network(url)
            : const Center(child: FaIcon(FontAwesomeIcons.image)),
      ),
    ),
  );
}