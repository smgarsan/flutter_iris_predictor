class IrisModel {
  final double sepalLength;
  final double sepalWidth;
  final double petalLength;
  final double petalWidth;

  IrisModel({
    required this.sepalLength,
    required this.sepalWidth,
    required this.petalLength,
    required this.petalWidth,
  });

  Map<String, dynamic> toJson() => {
    'sepal_length': sepalLength,
    'sepal_width': sepalWidth,
    'petal_length': petalLength,
    'petal_width': petalWidth,
  };
}