import 'package:flutter/material.dart';
import '../data/cake.dart';

class CookiePage extends StatelessWidget {
  const CookiePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFAF8),
      body: ListView(
        children: [
          const SizedBox(height: 15.0),
          Container(
            padding: const EdgeInsets.only(right: 15),
            width: MediaQuery.of(context).size.width - 30,
            height: MediaQuery.of(context).size.height - 50,
            child: GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.0,
                  mainAxisSpacing: 15.0,
                  childAspectRatio: 0.8),
              itemBuilder: (context, index) {
                return _buildCard(listCakes[index], context);
              },
              itemCount: listCakes.length,
            ),
          ),
          const SizedBox(height: 15.0),
        ],
      ),
    );
  }

  Widget _buildCard(
    Cake cake,
    context,
  ) {
    return Padding(
      padding: const EdgeInsets.all(5),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0,
              ),
            ],
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    cake.isFavorite
                        ? const Icon(
                            Icons.favorite,
                            color: Color(0xFFEF7532),
                          )
                        : const Icon(
                            Icons.favorite_border,
                            color: Color(0xFFEF7532),
                          )
                  ],
                ),
              ),
              Hero(
                tag: cake.imageUrl,
                child: Container(
                  height: 90,
                  width: 90,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                        image: AssetImage(cake.imageUrl), fit: BoxFit.contain),
                  ),
                ),
              ),
              const SizedBox(
                height: 7,
              ),
              Text(
                'Rp. ${cake.price}',
                style: const TextStyle(
                    color: Color(0xFFEF7532),
                    fontFamily: 'Varela',
                    fontSize: 14),
              ),
              Text(
                cake.name,
                style: const TextStyle(
                    color: Color(0xFFEF7532),
                    fontFamily: 'Varela',
                    fontSize: 14),
              ),
              Padding(
                padding: const EdgeInsets.all(8),
                child: Container(
                  color: Color(0xFFEBEBEB),
                  height: 1,
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 5),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
