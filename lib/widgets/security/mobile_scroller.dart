import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../app_images.dart';

class SecurityMobileScroller extends StatefulWidget {
  const SecurityMobileScroller({
    required this.list,
    this.viewportFraction = 0.2,
    super.key,
  });

  final List<String> list;
  final double viewportFraction;
  @override
  State<SecurityMobileScroller> createState() => _SecurityMobileStateScroller();
}

class _SecurityMobileStateScroller extends State<SecurityMobileScroller> {
  final CarouselController _controller = CarouselController();
  int _current = 0;
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Column(
      children: <Widget>[
        CarouselSlider(
          carouselController: _controller,
          options: CarouselOptions(
            height: size.height - 200,
            viewportFraction: widget.viewportFraction,
            enlargeCenterPage: true,
            autoPlay: true,
            onPageChanged: (int index, CarouselPageChangedReason reason) {
              setState(() {
                _current = index;
              });
            },
          ),
          items: widget.list
              .map((String item) => Center(
                      child: Image.network(
                    item,
                    height: size.height - 200,
                  )))
              .toList(),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
              widget.list.asMap().entries.map((MapEntry<int, String> entry) {
            return GestureDetector(
                onTap: () => _controller.animateToPage(entry.key),
                child: Icon(
                  _current == entry.key
                      ? Icons.radio_button_checked
                      : Icons.circle,
                  color: Theme.of(context)
                      .primaryColor
                      .withOpacity(_current == entry.key ? 0.9 : 0.4),
                ));
          }).toList(),
        ),
      ],
    );
  }
}
