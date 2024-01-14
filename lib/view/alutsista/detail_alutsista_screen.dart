import 'package:armada/model/product_model.dart';
import 'package:flutter/material.dart';

class DetailAlutsistaSceen extends StatelessWidget {
  final ProductModelDatum item;
  const DetailAlutsistaSceen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Detail ${item.attributes?.name ?? ""}",
          style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.3,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "http://10.0.2.2:1337${item.attributes!.image!.data!.attributes?.url}"))),
              //  child:
              // Image.asset(
              //   "assets/pistol.png",
              // )
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                item.attributes?.name ?? "",
                style:
                    const TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
              ),
            ),
            Text(
              item.attributes?.categories?.data?.first.attributes?.name ?? " ",
              style: const TextStyle(
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
            Text(
              item.attributes?.description ?? " ",
              style: const TextStyle(
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
            Text(
              item.attributes?.type ?? "-",
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
