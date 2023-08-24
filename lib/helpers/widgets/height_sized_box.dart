part of sizers;

class HeightSpaceBox extends StatelessWidget {
  final num size;
  const HeightSpaceBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Utils.getScreenHeight(context, size).widthBox;
  }
}
