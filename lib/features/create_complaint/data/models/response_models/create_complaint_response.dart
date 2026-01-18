class CreateComplaintResponse {
  final String id;
  final String name;
  final String description;
  final bool success;

  CreateComplaintResponse({
    required this.id,
    required this.name,
    required this.description,
    required this.success,
  });

  factory CreateComplaintResponse.fromJson(Map<String, dynamic> json) {
    return CreateComplaintResponse(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      success: json['success'] ?? false,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'success': success,
    };
  }
}
