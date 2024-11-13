part of '../../size_setter.dart';

/// It returns responsive Gap based on respective width value
class HeightSpaceBox extends StatelessWidget {
  final num size;
  const HeightSpaceBox({
    super.key,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: Utils.getScreenHeight(context, double.parse(size.toString())));
  }
}
