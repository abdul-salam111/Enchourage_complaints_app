class CreateComplaintParams {
  final String param1;
  final String param2;

  CreateComplaintParams({
    required this.param1,
    required this.param2,
  });

  Map<String, dynamic> toJson() {
    return {
      'param1': param1,
      'param2': param2,
    };
  }
}
