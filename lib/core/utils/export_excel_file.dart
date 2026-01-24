import 'dart:io';

import 'package:excel/excel.dart';

import '../../app_exports.dart';

class ExcelExporter {
  ExcelExporter._();

  static Future<void> export({
    required String fileName,
    required List<String> headers,
    required List<List<String>> rows,
    String sheetName = "All Complaints",
    bool openAfterExport = true,
  }) async {
    final excel = Excel.createExcel();

    /// Rename default sheet (IMPORTANT)
    final defaultSheet = excel.getDefaultSheet();
    if (defaultSheet != null) {
      excel.rename(defaultSheet, sheetName);
    }

    final sheet = excel[sheetName];

    /// Header style
    final headerStyle = CellStyle(
      bold: true,
      horizontalAlign: HorizontalAlign.Center,
    );

    /// Insert headers (row 0)
    for (int col = 0; col < headers.length; col++) {
      final cell = sheet.cell(
        CellIndex.indexByColumnRow(columnIndex: col, rowIndex: 0),
      );
      cell.value = TextCellValue(headers[col]);
      cell.cellStyle = headerStyle;
    }

    /// Insert data rows (start from row 1)
    for (int rowIndex = 0; rowIndex < rows.length; rowIndex++) {
      for (int colIndex = 0; colIndex < rows[rowIndex].length; colIndex++) {
        sheet
            .cell(
              CellIndex.indexByColumnRow(
                columnIndex: colIndex,
                rowIndex: rowIndex + 1,
              ),
            )
            .value = TextCellValue(
          rows[rowIndex][colIndex],
        );
      }
    }

    /// Save file
    final directory = await getApplicationDocumentsDirectory();
    final filePath = "${directory.path}/$fileName";

    final file = File(filePath)
      ..createSync(recursive: true)
      ..writeAsBytesSync(excel.encode()!);

    /// Open file
    if (openAfterExport) {
      OpenFile.open(file.path);
    }
  }

  static Future<void> exportComplaints({
    required List<Complaint> complaintsList,
    required String fileName,
    required String sheetName,
  }) async {
    ExcelExporter.export(
      sheetName: sheetName,
      fileName: "$fileName.xlsx",
      headers: const [
        "Complaint No",
        "Member Name",
        "Address",
        "Complaint Type",
        "Description",
        "Status",
        "Assigned By",
        "Assigned User",
        "Created At",
      ],
      rows: complaintsList.map<List<String>>((complaint) {
        return [
          complaint.complaintNo?.toString() ?? '',
          complaint.memberName?.toString() ?? '',
          complaint.address ?? '',
          complaint.complaintType?.toString() ?? '',
          complaint.description ?? '',
          complaint.status ?? '',
          complaint.assignBy?.toString() ?? '',
          complaint.assignToUser?.toString() ?? '',
          complaint.createdAt?.formatDate() ?? '',
        ];
      }).toList(),
    );
  }
}
