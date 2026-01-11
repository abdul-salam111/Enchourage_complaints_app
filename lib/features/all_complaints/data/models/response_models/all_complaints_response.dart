class AllComplaintsResponse {
  final String id;
  final String complaintNo;
  final DateTime date;
  final String status;
  final String name;
  final String description;
  final bool success;

  AllComplaintsResponse({
    required this.id,
    required this.name,
    required this.description,
    required this.success,
    required this.complaintNo,
    required this.date,
    required this.status,
  });

  factory AllComplaintsResponse.fromJson(Map<String, dynamic> json) {
    return AllComplaintsResponse(
      id: json['id'] ?? '',
      name: json['name'] ?? '',
      description: json['description'] ?? '',
      success: json['success'] ?? false,
      complaintNo: json['complaintNo'] ?? '',
      date: DateTime.parse(json['date'] ?? ''),
      status: json['status'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'description': description,
      'success': success,
      'complaintNo': complaintNo,
      'date': date,
      'status': status,
    };
  }
}
