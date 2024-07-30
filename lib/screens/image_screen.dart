import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';

class ImageScreen extends StatefulWidget {
  const ImageScreen({super.key});

  @override
  State<ImageScreen> createState() => _ImageScreenState();
}

class _ImageScreenState extends State<ImageScreen> {
  @override
  Widget build(BuildContext context) {
    // Animation<double>? opacity = (value / 1000).clamp(0, 1);
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Image.network(
            'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSOEXaRAeTmkz7jmJg3n_15Rmbe0ytmGfyZcw&s',
            width: 250,
            height: 250,
            alignment: Alignment.center,
          ),
          SvgPicture.asset(
            'assets/svg/Muslim graduation-bro.svg',
          ),
        ],
      ),
    );
  }
}
