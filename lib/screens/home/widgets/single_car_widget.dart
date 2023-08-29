import 'package:flutter/material.dart';

class SingleCarWidget extends StatelessWidget {
  final String label;
  final String rate;
  final String vote;
  final String cost;
  final String link;
  const SingleCarWidget({
    required this.label,
    required this.rate,
    required this.vote,
    required this.cost,
    required this.link,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: GridTile(
        footer: GridTileBar(
            backgroundColor: Colors.black87,
            leading: Padding(
              padding: const EdgeInsets.symmetric(vertical: 2),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(
                    width: 150,
                    child: Text(
                      label,
                      textAlign: TextAlign.left,
                      style: const TextStyle(fontSize: 15, color: Colors.white),
                      overflow: TextOverflow.ellipsis,
                      textWidthBasis: TextWidthBasis.longestLine,
                    ),
                  ),
                  Row(
                    children: [
                      const Icon(Icons.star_rate_sharp),
                      RichText(
                        text: TextSpan(
                            style: const TextStyle(fontSize: 15),
                            text: '$rate ',
                            children: [TextSpan(text: '($vote votes)', style: const TextStyle(fontSize: 10))]),
                      ),
                    ],
                  )
                ],
              ),
            ),
            title: const Text(''),
            trailing: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.end,
              children: [Text('$cost DA/J', style: const TextStyle(color: Colors.white, fontSize: 18))],
            )),
        child: GestureDetector(
          onTap: () {},
          child: Hero(
            tag: 1,
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: FadeInImage(
                // placeholder: AssetImage('assets/images/store-placeholder.png'),
                placeholder: const AssetImage('assets/images/car.bmp'),
                image: NetworkImage(link),
                // fit: BoxFit.cover,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
