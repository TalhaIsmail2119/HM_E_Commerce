import 'package:flutter/material.dart';

class HMSectionHeading extends StatelessWidget {
  const HMSectionHeading(
      {super.key,
      this.onPressed,
      required this.title,
      this.showActionButton = true,
      this.textColor,
      this.buttonTitle = 'View all'});

  final Color? textColor;
  final bool showActionButton;
  final String title, buttonTitle;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.headlineSmall!.apply(color: textColor),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
        ),
        if(showActionButton)
        TextButton(onPressed: onPressed,
            child: Text(buttonTitle)
        ),
      ],
    );
  }
}
