import '../../../../app_exports.dart';

class MessagesTab extends StatefulWidget {
  final int complaintId;
  const MessagesTab({super.key, required this.complaintId});

  @override
  State<MessagesTab> createState() => _MessagesTabState();
}

class _MessagesTabState extends State<MessagesTab> {
  final TextEditingController _controller = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _controller.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _sendMessage() {
    final text = _controller.text.trim();
    if (text.isEmpty) return;

    final vm = context.read<ComplaintDetailsViewModel>();
    vm.addMessage(context, text, widget.complaintId);
    _controller.clear();

    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!_scrollController.hasClients) return;
      _scrollController.animateTo(
        _scrollController.position.maxScrollExtent,
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ComplaintDetailsViewModel>(
      builder: (context, vm, _) {
        final messages = vm.messages;
        final bottomInset = MediaQuery.of(context).viewInsets.bottom;

        return Padding(
          padding: EdgeInsets.only(bottom: bottomInset),
          child: Column(
            children: [
              Expanded(
                child: messages.isEmpty
                    ? Center(
                        child: Text(
                          'No messages yet',
                          style: context.bodySmall.copyWith(
                            color: AppColors.textSecondaryLight,
                          ),
                        ),
                      )
                    : ListView.separated(
                        controller: _scrollController,
                        padding: const EdgeInsets.fromLTRB(12, 12, 12, 80),
                        itemCount: messages.length,
                        separatorBuilder: (_, __) => heightBox(8),
                        itemBuilder: (context, index) {
                          return AdminMessageCard(message: messages[index]);
                        },
                      ),
              ),
              MessageInputBar(controller: _controller, onSend: _sendMessage),
            ],
          ),
        );
      },
    );
  }
}

class AdminMessageCard extends StatelessWidget {
  final ComplaintMessage message;

  const AdminMessageCard({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: .all(12),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: .circular(8),
        border: .all(color: AppColors.grey200),
      ),
      child: Column(
        crossAxisAlignment: .start,
        children: [
          Text(
            message.message,
            style: context.bodySmall.copyWith(fontWeight: .normal),
          ),
          heightBox(6),
          Align(
            alignment: .centerRight,
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

class MessageInputBar extends StatelessWidget {
  final TextEditingController controller;
  final VoidCallback onSend;

  const MessageInputBar({
    super.key,
    required this.controller,
    required this.onSend,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
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
                  borderRadius: .circular(10),
                  borderSide: BorderSide(color: AppColors.grey200),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: .circular(10),
                  borderSide: BorderSide(color: AppColors.grey200),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: .circular(10),
                  borderSide: BorderSide(color: AppColors.primaryDark),
                ),
              ),
            ),
          ),
          widthBox(10),
          Consumer<ComplaintDetailsViewModel>(
            builder: (context, ref, _) => ref.isSendingMessage
                ? const CircularProgressIndicator.adaptive()
                : InkWell(
                    onTap: onSend,
                    borderRadius: .circular(10),
                    child: Container(
                      height: 44,
                      width: 44,
                      decoration: BoxDecoration(
                        color: AppColors.primaryDark,
                        borderRadius: .circular(10),
                      ),
                      child: const Icon(
                        Icons.send,
                        color: Colors.white,
                        size: 18,
                      ),
                    ),
                  ),
          ),
        ],
      ),
    );
  }
}
