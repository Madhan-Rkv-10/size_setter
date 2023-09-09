part of adaptive_sizer;

class WidthSpaceBox extends StatelessWidget {
  const WidthSpaceBox({Key? key, required this.size}) : super(key: key);
  final num size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Utils.getScreenWidth(context, double.parse(size.toString())),
    );
  }
}

// extension SizeBoxExtension on num {
//   Widget get widthSizedBox => SizedBox(width: double.parse(toString()));

//   Widget get heightSizedBox => SizedBox(height: double.parse(toString()));
// }
