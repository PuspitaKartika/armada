import 'package:flutter/material.dart';

class ArtikelWidget extends StatelessWidget {
  const ArtikelWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 24, top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Artikel Militer",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 240,
            child: ListView.builder(
                itemCount: 5,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Container(
                    width: 180,
                    padding: const EdgeInsets.all(5),
                    margin: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: [
                          BoxShadow(
                              blurRadius: 3,
                              color: Colors.grey.withOpacity(0.5))
                        ]),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/pistol.png",
                          width: 164,
                        ),
                        const Text(
                          "Norinco QBZ-192 Senapan Serbu Angkatan Darat China",
                          style: TextStyle(fontWeight: FontWeight.bold),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 2,
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
                  );
                }),
          )
        ],
      ),
    );
  }
}
