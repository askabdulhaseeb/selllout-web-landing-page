import 'package:flutter/material.dart';

import '../../app_images.dart';
import '../../utilities.dart';
import '../core/custom_elevated_button.dart';

class HomeAppBarMobileview extends StatelessWidget {
  const HomeAppBarMobileview({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const Expanded(child: _LeftSide()),
        Container(
          height: 110,
          width: 110,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: <BoxShadow>[Utilities.shadow()],
          ),
          child: SizedBox(
            height: 90,
            width: 90,
            child: Image.asset(AppImages.logo),
          ),
        ),
        const Expanded(child: _RightSide()),
      ],
    );
  }
}

class _LeftSide extends StatelessWidget {
  const _LeftSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.horizontal(left: Radius.circular(10)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.menu, color: Theme.of(context).primaryColor),
          ),
        ],
      ),
    );
  }
}

class _RightSide extends StatelessWidget {
  const _RightSide();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.horizontal(right: Radius.circular(10)),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          CustomElevatedButton(
            title: 'DOWNLOAD',
            padding: const EdgeInsets.symmetric(
              horizontal: 18,
              vertical: 8,
            ),
            textStyle: TextStyle(color: Colors.white),
            onTap: () {},
          ),
          const SizedBox(width: 6),
        ],
      ),
    );
  }
}
