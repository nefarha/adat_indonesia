enum EConstant {
  smallPadding(value: 10),
  mediumPadding(value: 15),
  largePadding(value: 20);

  const EConstant({required this.value});
  final double value;
}
