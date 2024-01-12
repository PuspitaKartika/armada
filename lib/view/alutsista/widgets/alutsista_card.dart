import 'package:armada/view/alutsista/detail_alutsista_screen.dart';
import 'package:flutter/material.dart';

class AlutsistaCard extends StatelessWidget {
  const AlutsistaCard({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => const DetailAlutsistaSceen()));
      },
      child: Container(
        padding: const EdgeInsets.all(5),
        margin: const EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(blurRadius: 3, color: Colors.grey.withOpacity(0.5))
            ]),
        child: Column(
          children: [
            Image.asset(
              "assets/pistol.png",
              width: 150,
            ),
            const Text(
              "Norinco QBZ-192 Senapan Serbu Angkatan Darat China",
              style: TextStyle(fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            const SizedBox(
              height: 4,
            ),
            const Text(
              "Satuan infanteri mekanis bukan hanya populer di lingkungan TNI ADa",
              style: TextStyle(color: Colors.grey, fontSize: 12),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
