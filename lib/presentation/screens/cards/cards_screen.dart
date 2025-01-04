import 'package:flutter/material.dart';



const cardsData = <Map<String, dynamic>>[
{'elevation': 0.0, 'label': 'Elevation 0'},
{'elevation': 1.0, 'label': 'Elevation 1'},
{'elevation': 2.0, 'label': 'Elevation 2'},
{'elevation': 3.0, 'label': 'Elevation 3'},
{'elevation': 4.0, 'label': 'Elevation 4'},
  {'elevation': 5.0, 'label': 'Elevation 5'},
];



class CardsScreens extends StatelessWidget {
  static const name = 'cards_screen';
  const CardsScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cards Screen"),
      ),
      body: _CardsView(),
    );
  }
}

class _CardsView extends StatelessWidget {
  const _CardsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          ...cardsData.map(
              (card) => _CardType1(label: card['label'], elevation: card['elevation'])
          ),

        ],
      ),
    );
  }
}

class _CardType1 extends StatelessWidget {

  final String label;
  final double elevation;

  const _CardType1({super.key, required this.label, required this.elevation});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: elevation,
      child: Padding(
        padding: EdgeInsets.fromLTRB(10, 5, 10, 10),
          child: Column(
          children: [
            Align(
              alignment: Alignment.topRight,
              child: IconButton(
                onPressed: (){},
                icon: Icon(Icons.more_vert_rounded),
              ),
            ),
            
            Align(
              alignment: Alignment.bottomLeft,
              child: Text(label),
            ),
        ],
      ),
      ),
    );
  }
}


