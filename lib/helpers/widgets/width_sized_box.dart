part of size_setter;

/// It returns responsive Gap based on respective width value

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
