class ApiEndPoints {
  static const baseUrl = "https://anchorageislamabad.com/api/";
  static const String loginEndpoint = "${baseUrl}login";
  static const String allComplaintsEndpoint = "${baseUrl}admin/complaints";
  static const String indoorComplaintsEndpoint =
      "${baseUrl}admin/complaint/indoor";
  static const String outdoorComplaintsEndpoint =
      "${baseUrl}admin/complaint/outdoor";
  static const String addComplaintEndpoint = "${baseUrl}admin/complaint/create";
  static const String getAllBlocksEndpoint = "${baseUrl}block";
  static const String getStreetEndpoint = "${baseUrl}street/";
  static const String getPlotEndpoint = "${baseUrl}plot/";
  static const String createComplaintEndpoint =
      "${baseUrl}admin/complaint/create";
  static const String getComplaintTypesListEndpoint =
      "${baseUrl}complaint-type";
  static String getPlotResidentEndpoint(int plotId) =>
      "${baseUrl}admin/plot/$plotId/residents";
  static String getComplaintDetailsEndpoint(int complaintId) =>
      "${baseUrl}admin/complaint/$complaintId/view";
  static String deleteComplaintEndpoint(int complaintId) =>
      "${baseUrl}admin/complaint/$complaintId";
  static String sentMessageByAdmin(int complaintId) =>
      "${baseUrl}admin/complaint/$complaintId/messages";
  static String changeComplaintDuration(int complaintId) =>
      "${baseUrl}admin/complaint/$complaintId/duration";
  static String getMessagesList(int complaintId) =>
      "${baseUrl}admin/complaint/$complaintId/view-message";
  static String changeComplaintStatus() =>
      "${baseUrl}admin/complaint/select-status";
  static String getEmployeesList() => "${baseUrl}admin/employees";
  static String deleteSelectedComplaints() =>
      "${baseUrl}admin/complaint/delete-selected";
  static String getComplaintBillsList(int complaintNumber) =>
      "${baseUrl}admin/bills/$complaintNumber/view-bill";

  static String getBillingDropdownList() => "${baseUrl}admin/billing-types";

  static String getComplaintPropertyList(int complaintId) =>
      "${baseUrl}admin/property/$complaintId";

  static String createComplaintBill() => "${baseUrl}admin/bills/add";
}
