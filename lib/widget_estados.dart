import 'package:flutter/material.dart';

class Estados extends StatefulWidget {
  @override
  _Estados createState() => _Estados();
}

class _Estados extends State<Estados> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Infecçao da COVID-19 por estados'),
          backgroundColor: Colors.red,
          centerTitle: true,
          actions: null,
        ),
        body: ListView.builder(
          itemBuilder: (BuildContext context, int index) =>
              EntryItem(data[index]),
          itemCount: data.length,
        ),
      );
  }
}

// One entry in the multilevel list displayed by this app.
class Entry {
  Entry(this.title, [this.children = const <Entry>[]]);

  final String title;
  final List<Entry> children;
}

// The entire multilevel list displayed by this app.
final List<Entry> data = <Entry>[
  Entry(
    'Minas Gerais',
    <Entry>[
      Entry(
        'Número de infectados',
        <Entry>[
          Entry('1000'),
        ],
      ),
      Entry(
        'Número de mortos',
        <Entry>[
          Entry('10'),
        ],
      ),
    ],
  ),
  Entry(
    'Santa Catarina',
    <Entry>[
      Entry(
        'Número de infectados',
        <Entry>[
          Entry('500'),
        ],
      ),
      Entry(
        'Número de mortos',
        <Entry>[
          Entry('5'),
        ],
      ),
    ],
  ),
  Entry(
    'Rio de Janeiro',
    <Entry>[
      Entry(
        'Número de infectados',
        <Entry>[
          Entry('20000'),
        ],
      ),
      Entry(
        'Número de mortos',
        <Entry>[
          Entry('200'),
        ],
      ),
    ],
  ),

  Entry(
    'São Paulo',
    <Entry>[
      Entry(
        'Número de infectados',
        <Entry>[
          Entry('30000'),
        ],
      ),
      Entry(
        'Número de mortos',
        <Entry>[
          Entry('300'),
        ],
      ),
    ],
  ),
];

// Displays one Entry. If the entry has children then it's displayed
// with an ExpansionTile.
class EntryItem extends StatelessWidget {
  const EntryItem(this.entry);

  final Entry entry;

  Widget _buildTiles(Entry root) {
    if (root.children.isEmpty) return ListTile(title: Text(root.title));
    return ExpansionTile(
      key: PageStorageKey<Entry>(root),
      title: Text(root.title),
      children: root.children.map(_buildTiles).toList(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return _buildTiles(entry);
  }
}

//void main() {
//  runApp(_Estados());
//}