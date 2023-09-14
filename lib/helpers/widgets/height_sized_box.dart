part of size_setter;

/// It returns responsive Gap based on respective width value
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
