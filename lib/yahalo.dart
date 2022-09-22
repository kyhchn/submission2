import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Yahalo extends StatelessWidget {
  const Yahalo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Colors.grey,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'yahaloooo',
                    style: TextStyle(color: Colors.white),
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        AssetImage('assets/asal lo tau ya dek.jpg'),
                  )
                ],
              ),
            ),
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/oh_boy.jpeg'), fit: BoxFit.fill),
                borderRadius: BorderRadius.horizontal(
                    left: Radius.circular(10), right: Radius.circular(20))),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Container(
                width: double.infinity,
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(40),
                  color: Colors.white,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text('Halo Button'),
                    Text('Pencet saya'),
                    ElevatedButton(
                      onPressed: () {},
                      child: Container(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Icon(Icons.abc),
                            Text('Pesan Test Sekarang')
                          ],
                        ),
                        width: MediaQuery.of(context).size.width * 0.2,
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
