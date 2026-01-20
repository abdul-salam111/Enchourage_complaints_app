class ApiEndPoints {
  static const baseUrl = "https://anchorageislamabad.com/api/";
  static const String loginEndpoint = "${baseUrl}login";
  static const String allComplaintsEndpoint =
      "${baseUrl}admin/complaints?page=";
  static const String indoorComplaintsEndpoint =
      "${baseUrl}admin/complaint/indoor?page=";
  static const String outdoorComplaintsEndpoint =
      "${baseUrl}admin/complaint/outdoor?page=";
  static const String addComplaintEndpoint = "${baseUrl}admin/complaint/create";
  static const String getAllBlocksEndpoint = "${baseUrl}block";
  static const String getStreetEndpoint = "${baseUrl}street/";
  static const String getPlotEndpoint = "${baseUrl}plot/";
}
