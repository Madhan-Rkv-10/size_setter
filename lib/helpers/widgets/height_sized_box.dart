part of size_setter;

class HeightSpaceBox extends StatelessWidget {
  final num size;
  const HeightSpaceBox({
    Key? key,
    required this.size,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: Utils.getScreenHeight(context, double.parse(size.toString())));
  }
}
