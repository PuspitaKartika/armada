import 'package:flutter/material.dart';

class KategoriWidget extends StatelessWidget {
  const KategoriWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 260,
      width: MediaQuery.of(context).size.width,
      child: GridView.builder(
          itemCount: 6,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3),
          itemBuilder: ((context, index) => Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(
                    margin: const EdgeInsets.all(10),
                    padding: const EdgeInsets.all(24),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                        boxShadow: const [
                          BoxShadow(blurRadius: 3, color: Colors.grey)
                        ]),
                    child: Image.asset("assets/pistol.png"),
                  ),
                  const Flexible(child: Text("Pistol"))
                ],
              ))),
    );
  }
}
