import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:profectus/app/routes/app_pages.dart';
import 'package:profectus/app/theme/app_text_theme.dart';
import 'package:profectus/app/widgets/custom_button_widget.dart';

class HelloPage extends Container {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: Get.height,
      color: Color(0xffA9F5E1),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Image.asset(
            'assets/images/imagem_2.png',
            fit: BoxFit.cover,
          ),
          Column(
            children: <Widget>[
              Text(
                "Olá",
                style: style,
              ),
              Text(
                "Somos a Profectus",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                ),
              ),
              Text(
                "Arraste para o lado e conheça \n nossa proposta!",
                textAlign: TextAlign.end,
                style: TextStyle(fontSize: 16, color: Colors.black),
              ),
            ],
          ),
        
        ],
      ),
    );
  }
}
