import 'package:armada/view/alutsista/widgets/alutsista_card.dart';
import 'package:armada/widgets/main_text_field.dart';
import 'package:flutter/material.dart';

class AlutsistaScreen extends StatefulWidget {
  const AlutsistaScreen({super.key});

  @override
  State<AlutsistaScreen> createState() => _AlutsistaScreenState();
}

class _AlutsistaScreenState extends State<AlutsistaScreen> {
  TextEditingController searchController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: const Text(
          "Alutsista",
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: MainTextField(
              controller: searchController,
              hintText: "search",
              surfix: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  )),
            ),
          ),
          Expanded(
            child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemCount: 5,
                itemBuilder: (context, index) => const AlutsistaCard()),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
    );
  }
}
