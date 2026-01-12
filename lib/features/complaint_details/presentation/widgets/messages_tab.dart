import '../../../../app_exports.dart';

class MessagesTab extends StatefulWidget {
  const MessagesTab({super.key});

  @override
  State<MessagesTab> createState() => _MessagesTabState();
}

class _MessagesTabState extends State<MessagesTab> {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  final List<ComplaintMessage> _messages = [
    ComplaintMessage(
      message: 'Complaint assigned to maintenance team.',
      time: '10:30 AM',
    ),
    ComplaintMessage(
      message: 'Maintenance staff acknowledged the task.',
      time: '11:10 AM',
    ),
    ComplaintMessage(message: 'Work completed successfully.', time: '04:45 PM'),
  ];

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _sendMessage() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;

    final now = TimeOfDay.now().format(context);

    setState(() {
      _messages.add(ComplaintMessage(message: text, time: now));
    });

    _controller.clear();

    // scroll to bottom
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 250),
          curve: Curves.easeOut,
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // ✅ Messages list
        Expanded(
          child: _messages.isEmpty
              ? Center(
                  child: Text(
                    'No activity yet',
                    style: context.bodySmall.copyWith(
                      color: AppColors.textSecondaryLight,
                    ),
                  ),
                )
              : ListView.separated(
                  controller: _scrollController,
                  padding: const EdgeInsets.all(12),
                  itemCount: _messages.length,
                  separatorBuilder: (_, __) => heightBox(8),
                  itemBuilder: (context, index) {
                    final msg = _messages[index];
                    return _AdminMessageCard(message: msg);
                  },
                ),
        ),

        // ✅ Input bar
        _MessageInputBar(controller: _controller, onSend: _sendMessage),
      ],
    );
  }
}

class ComplaintMessage {
  final String message;
  final String time;

  ComplaintMessage({required this.message, required this.time});
}

class _AdminMessageCard extends StatelessWidget {
  final ComplaintMessage message;

  const _AdminMessageCard({required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(12),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: AppColors.grey200),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            message.message,
            style: context.bodySmall.copyWith(fontWeight: FontWeight.normal),
          ),
          heightBox(6),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              message.time,
              style: context.bodySmall.copyWith(
                fontSize: 11,
                color: AppColors.textSecondaryLight,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _MessageInputBar extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSend;

  const _MessageInputBar({required this.controller, required this.onSend});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Container(
        padding: const EdgeInsets.fromLTRB(12, 10, 12, 10),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border(top: BorderSide(color: AppColors.grey200)),
        ),
        child: Row(
          children: [
            Expanded(
              child: TextField(
                controller: controller,
                style: context.bodySmall,
                minLines: 1,
                maxLines: 4,
                textInputAction: TextInputAction.send,
                onSubmitted: (_) => onSend(),
                decoration: InputDecoration(
                  hintText: 'Write message...',
                  hintStyle: context.bodySmall.copyWith(
                    color: AppColors.textSecondaryLight,
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 12,
                    vertical: 10,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.grey200),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.grey200),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                    borderSide: BorderSide(color: AppColors.primaryDark),
                  ),
                ),
              ),
            ),
            widthBox(10),
            InkWell(
              onTap: onSend,
              borderRadius: BorderRadius.circular(10),
              child: Container(
                height: 44,
                width: 44,
                decoration: BoxDecoration(
                  color: AppColors.primaryDark,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(Icons.send, color: Colors.white, size: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
