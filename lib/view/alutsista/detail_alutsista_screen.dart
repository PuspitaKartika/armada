import 'package:flutter/material.dart';

class DetailAlutsistaSceen extends StatelessWidget {
  const DetailAlutsistaSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Detail Pistol",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
                child: Image.asset(
                  "assets/pistol.png",
                )),
            const Padding(
              padding: EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "Nama Alutsista",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            const Text(
              "kategori",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 5),
              child: Text(
                "Deskripsi",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            const Text(
              "blablablaaaa",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 20, bottom: 5),
              child: Text(
                "Tipe",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            const Text(
              "Jenis",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
