import 'package:armada/bloc/get_product/get_product_cubit.dart';
import 'package:armada/view/alutsista/widgets/alutsista_card.dart';
import 'package:armada/widgets/main_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AlutsistaScreen extends StatefulWidget {
  const AlutsistaScreen({super.key});

  @override
  State<AlutsistaScreen> createState() => _AlutsistaScreenState();
}

class _AlutsistaScreenState extends State<AlutsistaScreen> {
  TextEditingController searchController = TextEditingController();

  void initState() {
    super.initState();
    context.read<GetProductCubit>().fetchProduct(context: context);
  }

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
          BlocBuilder<GetProductCubit, GetProductState>(
            builder: (context, state) {
              if (state is GetProductSuccess) {
                return Expanded(
                  child: GridView.builder(
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 2),
                      itemCount: state.data.length,
                      itemBuilder: (context, index) => AlutsistaCard(
                            item: state.data[index],
                          )),
                );
              } else if (state is GetProductLoading) {
                return const Center(
                  child: CircularProgressIndicator(),
                );
              } else if (state is GetProductFailure) {
                return Text(state.message);
              }
              return const SizedBox();
            },
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
