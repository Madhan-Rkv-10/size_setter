part of sizers;

class WidthSpaceBox extends StatelessWidget {
  const WidthSpaceBox({Key? key, required this.size}) : super(key: key);
  final num size;

  @override
  Widget build(BuildContext context) {
    return Utils.getScreenWidth(context, size).widthBox;
  }
}
