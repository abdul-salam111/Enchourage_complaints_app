import 'package:flutter/material.dart';

class PaginationWidget extends StatelessWidget {
  final int currentPage;
  final int totalPages;
  final int totalItems;
  final VoidCallback onPrevious;
  final VoidCallback onNext;
  final Function(int) onPageSelected;

  const PaginationWidget({
    super.key,
    required this.currentPage,
    required this.totalPages,
    required this.totalItems,
    required this.onPrevious,
    required this.onNext,
    required this.onPageSelected,
  });

  List<dynamic> _getPageNumbers() {
    if (totalPages <= 7) {
      return List.generate(totalPages, (i) => i + 1);
    }

    if (currentPage <= 4) {
      return [1, 2, 3, 4, 5, '...', totalPages];
    }

    if (currentPage >= totalPages - 3) {
      return [
        1,
        '...',
        totalPages - 4,
        totalPages - 3,
        totalPages - 2,
        totalPages - 1,
        totalPages,
      ];
    }

    return [
      1,
      '...',
      currentPage - 1,
      currentPage,
      currentPage + 1,
      '...',
      totalPages,
    ];
  }

  @override
  Widget build(BuildContext context) {
    final pageNumbers = _getPageNumbers();

    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border(top: BorderSide(color: Colors.grey.shade300)),
      ),
      child: Row(
        mainAxisAlignment: .spaceBetween,
        children: [
          // Previous button
          IconButton(
            onPressed: currentPage > 1 ? onPrevious : null,
            icon: const Icon(Icons.chevron_left),
            iconSize: 24,
            color: currentPage > 1 ? Colors.blue : Colors.grey,
            tooltip: 'Previous',
          ),

          // Page numbers
          ...pageNumbers.map((page) {
            if (page is String) {
              return Text(
                page,
                style: TextStyle(fontSize: 14, color: Colors.grey.shade600),
              );
            }

            final isActive = page == currentPage;
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2),
              child: InkWell(
                onTap: () => onPageSelected(page),
                borderRadius: BorderRadius.circular(4),
                child: Container(
                  width: 25,
                  height: 25,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: isActive ? Colors.blue : Colors.transparent,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(
                      color: isActive ? Colors.blue : Colors.grey.shade300,
                    ),
                  ),
                  child: Text(
                    '$page',
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: isActive
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: isActive ? Colors.white : Colors.grey.shade700,
                    ),
                  ),
                ),
              ),
            );
          }),

          // Next button
          IconButton(
            onPressed: currentPage < totalPages ? onNext : null,
            icon: const Icon(Icons.chevron_right),
            iconSize: 24,
            color: currentPage < totalPages ? Colors.blue : Colors.grey,
            tooltip: 'Next',
          ),
        ],
      ),
    );
  }
}
