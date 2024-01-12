import 'package:armada/view/home/widgets/artikel_widget.dart';
import 'package:armada/view/home/widgets/kategori_widget.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Image.asset(
                      "assets/logo.png",
                      width: 84,
                    ),
                    const CircleAvatar(
                      child: Text("A"),
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 28,
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24),
                child: Text(
                  "Selamat Datang !",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                ),
              ),
              const KategoriWidget(),
              const ArtikelWidget()
            ],
          ),
        ),
      ),
    );
  }
}
