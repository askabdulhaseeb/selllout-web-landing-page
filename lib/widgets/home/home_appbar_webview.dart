import 'package:flutter/material.dart';

import '../../app_images.dart';
import '../../utilities.dart';
import '../core/custom_elevated_button.dart';

class HomeAppBarWebview extends StatelessWidget {
  const HomeAppBarWebview({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        const _LeftSide(),
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
        const _RightSide(),
      ],
    );
  }
}

class _RightSide extends StatelessWidget {
  const _RightSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.horizontal(right: Radius.circular(10)),
      ),
      child: Row(
        children: <Widget>[
          const SizedBox(width: 10),
          AppBarClickableButton(
            title: 'security',
            isSelected: true,
            onTap: () {},
          ),
          AppBarClickableButton(
            title: 'Help Center',
            isSelected: false,
            onTap: () {},
          ),
          CustomElevatedButton(
            title: 'DOWNLOAD',
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 8,
            ),
            onTap: () {},
          ),
          const SizedBox(width: 6),
        ],
      ),
    );
  }
}

class _LeftSide extends StatelessWidget {
  const _LeftSide({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.horizontal(left: Radius.circular(10)),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          const SizedBox(width: 16),
          AppBarClickableButton(
            title: 'home',
            isSelected: true,
            onTap: () {},
          ),
          AppBarClickableButton(
            title: 'about',
            isSelected: false,
            onTap: () {},
          ),
          AppBarClickableButton(
            title: 'features',
            isSelected: false,
            onTap: () {},
          ),
        ],
      ),
    );
  }
}

class AppBarClickableButton extends StatelessWidget {
  const AppBarClickableButton({
    required this.title,
    required this.isSelected,
    required this.onTap,
    Key? key,
  }) : super(key: key);

  final String title;
  final bool isSelected;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Text(
        title.toUpperCase(),
        style: TextStyle(
          fontSize: 18,
          fontWeight: isSelected ? FontWeight.w700 : FontWeight.w400,
          color: isSelected ? Theme.of(context).primaryColor : null,
          decoration: isSelected ? TextDecoration.underline : null,
        ),
      ),
    );
  }
}
