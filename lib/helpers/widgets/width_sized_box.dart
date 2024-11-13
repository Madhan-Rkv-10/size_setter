part of '../../size_setter.dart';

/// It returns responsive Gap based on respective width value

class WidthSpaceBox extends StatelessWidget {
  const WidthSpaceBox({super.key, required this.size});
  final num size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Utils.getScreenWidth(context, double.parse(size.toString())),
    );
  }
}
