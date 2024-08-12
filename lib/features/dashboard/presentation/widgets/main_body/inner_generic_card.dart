import 'package:business_tracker/config/styles/app_dimensions.dart';
import 'package:flutter/material.dart';

class InnerGenericCard extends StatelessWidget {
  final String label;
  final String value;
  final IconData icon;

  const InnerGenericCard({
    Key? key,
    required this.label,
    required this.value,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dimensions = AppDimensions(context);
    return Container(
      padding: dimensions.pagePaddingGlobal,
      decoration: BoxDecoration(
        color: Theme.of(context).colorScheme.surface,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Icon(icon, color: Theme.of(context).colorScheme.primary),
          // const VerticalDivider(thickness: 1,)
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(label, style: Theme.of(context).textTheme.bodySmall),
                Text(value, style: Theme.of(context).textTheme.bodyLarge),
              ],
            ),
          )
        ],
      ),
    );
    // return Container(
    //   padding: const EdgeInsets.all(8.0),
    //   decoration: BoxDecoration(
    //     color: Theme.of(context).colorScheme.surface,
    //     borderRadius: BorderRadius.circular(10),
    //   ),
    //   child: Column(
    //     crossAxisAlignment: CrossAxisAlignment.start,
    //     children: [
    //       Icon(icon, color: Theme.of(context).colorScheme.primary),
    //       const SizedBox(height: 8),
    //       Text(label, style: Theme.of(context).textTheme.bodySmall),
    //       Text(value, style: Theme.of(context).textTheme.bodyLarge),
    //     ],
    //   ),
    // );
  }
}
