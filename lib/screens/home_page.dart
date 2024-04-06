import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Refeições'),
        centerTitle: true,
      ),
      body: Center(
        child: CarouselSlider(
          options: CarouselOptions(
            height: 400,
            enableInfiniteScroll: false,
            enlargeFactor: 0.2,
            enlargeCenterPage: true,
          ),
          items: ['Segunda', 'Terça', 'Quarta', 'Quinta', 'Sexta'].map((dia) {
            return Card(
              elevation: 1,
              // color: Colors.white54,
              margin: const EdgeInsets.symmetric(horizontal: 8),
              clipBehavior: Clip.antiAliasWithSaveLayer,
              child: SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    Container(
                      color: Colors.amber,
                      height: 280,
                      child: Image.asset(
                        'assets/images/foto.webp',
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Text(
                      'Macarronada Macarronada de Macarronada Macarronada',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      dia,
                      style: const TextStyle(fontSize: 16),
                    ),
                    const SizedBox(height: 8),
                  ],
                ),
              ),
            );
          }).toList(),
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: () {
        print('Olá mundo!');
      }),
    );
  }
}
