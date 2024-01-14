import 'package:armada/constans/constans.dart';
import 'package:armada/model/product_model.dart';
import 'package:armada/view/alutsista/detail_alutsista_screen.dart';
import 'package:flutter/material.dart';

class AlutsistaCard extends StatelessWidget {
  final ProductModelDatum item;
  const AlutsistaCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailAlutsistaSceen(
                      item: item,
                    )));
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
            Container(
              height: 100,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "http://10.0.2.2:1337${item.attributes!.image!.data!.attributes?.url}"))),
            ),
            // Image.network("${item.attributes!.image!.data!.attributes?.url}"),
            // NetworkImage("${item.attributes!.image!.data!.attributes?.url}"),

            Text(
              item.attributes?.name ?? "",
              style: const TextStyle(fontWeight: FontWeight.bold),
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
            const SizedBox(
              height: 4,
            ),
            Text(
              item.attributes?.description ?? "",
              style: const TextStyle(color: Colors.grey, fontSize: 12),
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
            ),
          ],
        ),
      ),
    );
  }
}
