// ignore_for_file: deprecated_member_use

import '../../app_exports.dart';

class ConfirmationPopup extends StatefulWidget {
  final String title;
  final String subTitle;
  final Future<void> Function() onConfirm;
  final VoidCallback onCancel;
  final String confirmText;
  final String cancelText;

  const ConfirmationPopup({
    super.key,
    required this.title,
    required this.subTitle,
    required this.onConfirm,
    required this.onCancel,
    required this.confirmText,
    required this.cancelText,
  });

  @override
  State<ConfirmationPopup> createState() => _ConfirmationPopupState();
}

class _ConfirmationPopupState extends State<ConfirmationPopup>
    with SingleTickerProviderStateMixin {
  late AnimationController _iconController;
  late Animation<double> _iconAnimation;

  @override
  void initState() {
    super.initState();
    _iconController = AnimationController(
      duration: const Duration(milliseconds: 600),
      vsync: this,
    );
    _iconAnimation = CurvedAnimation(
      parent: _iconController,
      curve: Curves.elasticOut,
    );
    _iconController.forward();
  }

  @override
  void dispose() {
    _iconController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Material(
        color: Colors.transparent,
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 24),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(24),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 30,
                offset: const Offset(0, 10),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // Animated Icon
              ScaleTransition(
                scale: _iconAnimation,
                child: Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Colors.orange.shade400,
                        Colors.deepOrange.shade600,
                      ],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.orange.withOpacity(0.3),
                        blurRadius: 20,
                        spreadRadius: 5,
                      ),
                    ],
                  ),
                  child: const Icon(
                    Icons.warning_rounded,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ),

              const SizedBox(height: 24),

              // Title
              Text(
                widget.title.toString(),
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF2D3142),
                ),
              ),

              const SizedBox(height: 12),

              // Message
              Text(
                widget.subTitle,
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 13,
                  color: Colors.grey.shade600,
                  height: 1.5,
                ),
              ),

              const SizedBox(height: 32),

              // Buttons
              Row(
                children: [
                  // Cancel Button
                  Expanded(
                    child: _AnimatedButton(
                      onTap: widget.onCancel,
                      backgroundColor: Colors.grey.shade100,
                      textColor: Colors.grey.shade700,
                      text: widget.cancelText,
                      icon: Icons.close_rounded,
                    ),
                  ),

                  const SizedBox(width: 12),

                  // Confirm Button
                  Expanded(
                    child: _AnimatedButton(
                      onTap: widget.onConfirm,
                      backgroundColor: AppColors.primaryDark,
                      textColor: Colors.white,
                      text: widget.confirmText,
                      icon: Icons.check_rounded,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _AnimatedButton extends StatefulWidget {
  final dynamic onTap;
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final IconData icon;

  const _AnimatedButton({
    required this.onTap,
    required this.backgroundColor,
    required this.textColor,
    required this.text,
    required this.icon,
  });

  @override
  State<_AnimatedButton> createState() => _AnimatedButtonState();
}

class _AnimatedButtonState extends State<_AnimatedButton> {
  bool _isPressed = false;

  void _handleTap() async {
    if (widget.onTap is Future<void> Function()) {
      await widget.onTap();
    } else if (widget.onTap is VoidCallback) {
      widget.onTap();
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) {
        setState(() => _isPressed = false);
        _handleTap();
      },
      onTapCancel: () => setState(() => _isPressed = false),
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        curve: Curves.easeInOut,
        transform: Matrix4.identity()..scale(_isPressed ? 0.95 : 1.0),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 8),
          decoration: BoxDecoration(
            color: widget.backgroundColor,
            borderRadius: BorderRadius.circular(8),
            boxShadow: _isPressed
                ? []
                : [
                    BoxShadow(
                      color: widget.backgroundColor.withOpacity(0.3),
                      blurRadius: 8,
                      offset: const Offset(0, 4),
                    ),
                  ],
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(widget.icon, color: widget.textColor, size: 20),
              const SizedBox(width: 6),
              Text(
                widget.text,
                style: TextStyle(
                  color: widget.textColor,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Alternative: Blur background animation
void confirmationPopupHelper(
  BuildContext context,
  Future<void> Function() onConfirm,
  VoidCallback onCancel,
  String title,
  String subTitle,
  String confirmText,
  String cancelText,
) {
  showGeneralDialog(
    context: context,
    barrierDismissible: false,
    barrierLabel: 'Close Order',
    barrierColor: Colors.black.withOpacity(0.6),
    transitionDuration: const Duration(milliseconds: 300),
    pageBuilder: (context, animation, secondaryAnimation) {
      return const SizedBox.shrink();
    },
    transitionBuilder: (context, animation, secondaryAnimation, child) {
      return ScaleTransition(
        scale: Tween<double>(begin: 0.8, end: 1.0).animate(
          CurvedAnimation(parent: animation, curve: Curves.easeOutBack),
        ),
        child: FadeTransition(
          opacity: animation,
          child: ConfirmationPopup(
            onConfirm: onConfirm,
            onCancel: onCancel,
            title: title,
            subTitle: subTitle,
            confirmText: confirmText,
            cancelText: cancelText,
          ),
        ),
      );
    },
  );
}
