// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:weather_app/widgets/cards.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        extendBodyBehindAppBar: true,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarBrightness: Brightness.dark,
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.fromLTRB(40, 1.2 * kToolbarHeight, 40, 20),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Stack(
              children: [
                Align(
                  alignment: const AlignmentDirectional(3, -0.3),
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Colors.deepPurple),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(-3, -0.3),
                  child: Container(
                    height: 300,
                    width: 300,
                    decoration: const BoxDecoration(
                        shape: BoxShape.circle, color: Color(0xFF673AB7)),
                  ),
                ),
                Align(
                  alignment: const AlignmentDirectional(0, -1.2),
                  child: Container(
                    height: 300,
                    width: 600,
                    decoration: const BoxDecoration(color: Color(0xFFFFAB40)),
                  ),
                ),
                BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 100.0, sigmaY: 100.0),
                  child: Container(
                      decoration:
                          const BoxDecoration(color: Colors.transparent)),
                ),
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text('Caruaru, Pernambuco',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w300)),
                        Text(
                          'Bom Dia',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 25,
                              fontWeight: FontWeight.bold),
                        ),
                        Image.asset('assets/1.png'),
                        const Center(
                          child: Text(
                            '21°C',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 40,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Center(
                          child: Text(
                            'Tempestade',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 25,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        const Center(
                          child: Text(
                            'Sexta 16 . 09:40',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w300),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        //TODO COMPONENTIZAR ESSA ROW<D E MANEIRA A NÂO RPETIR CÒDIGO
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CardRow(
                                imageUrl: 'assets/11.png',
                                tittle: 'Sunrise',
                                subtittle: '05:04 am'),
                            CardRow(
                                imageUrl: 'assets/12.png',
                                tittle: 'Sunrise',
                                subtittle: '05:04 am'),
                          ],
                        ),
                        Divider(
                          thickness: 1,
                          color: Colors.grey,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CardRow(
                                imageUrl: 'assets/13.png',
                                tittle: 'Temp Min',
                                subtittle: '05:04 am'),
                            CardRow(
                                imageUrl: 'assets/14.png',
                                tittle: 'Temp Max',
                                subtittle: '05:04 am'),
                          ],
                        ),
                      ],
                    ))
              ],
            ),
          ),
        ));
  }
}
