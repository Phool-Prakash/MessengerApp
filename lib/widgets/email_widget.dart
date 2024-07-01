import 'package:flutter/material.dart';

import '../model/models.dart';

enum EmailType {
  preview,
  threaded,
  primaryThreaded,
}

class EmailWidget extends StatefulWidget {
  const EmailWidget(
      {super.key,
      this.isSelected = false,
      this.isPreview = true,
      this.showHeadline = false,
      this.isThreaded = false,
      this.onSelected,
      required this.email});

  final bool isSelected;
  final bool isPreview;
  final bool showHeadline;
  final bool isThreaded;
  final void Function()? onSelected;
  final Email email;
  @override
  State<EmailWidget> createState() => _EmailWidgetState();
}

class _EmailWidgetState extends State<EmailWidget> {
  late final ColorScheme _colorScheme = Theme.of(context).colorScheme;
  late Color unselectedColor = Color.alphaBlend(
      _colorScheme.primary.withOpacity(0.08), _colorScheme.surface);

  Color get _surfaceColor => switch (widget) {
        EmailWidget(isPreview: false) => _colorScheme.surface,
        EmailWidget(isSelected: true) => _colorScheme.primaryContainer,
        _ => unselectedColor
      };
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onSelected,
      child: Card(
        elevation: 0,
        color: _surfaceColor,
        clipBehavior: Clip.hardEdge,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [if (widget.showHeadline) ...[]],
        ),
      ),
    );
  }
}

///Email Headline
class EmailHeadline extends StatefulWidget {
  const EmailHeadline(
      {super.key, required this.email, required this.isSelected});

  final Email email;
  final bool isSelected;
  @override
  State<EmailHeadline> createState() => _EmailHeadlineState();
}

class _EmailHeadlineState extends State<EmailHeadline> {
  late final TextTheme _textTheme = Theme.of(context).textTheme;
  late final ColorScheme _colorScheme = Theme.of(context).colorScheme;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        height: 84,
        color: Color.alphaBlend(
            _colorScheme.primary.withOpacity(0.05), _colorScheme.surface),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(24, 12, 12, 12),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.email.subject,
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                    style: const TextStyle(
                        fontSize: 18, fontWeight: FontWeight.w400),
                  ),
                  Text(
                    '${widget.email.replies.toString()} Messages',
                    maxLines: 1,
                    overflow: TextOverflow.fade,
                    style: _textTheme.labelMedium
                        ?.copyWith(fontWeight: FontWeight.w500),
                  )
                ],
              )),
              if (constraints.maxWidth - 200 > 0) ...[
                SizedBox(
                  height: 40,
                  width: 40,
                  child: FloatingActionButton(
                    onPressed: () {},
                    elevation: 0,
                    backgroundColor: _colorScheme.surface,
                    child: const Icon(Icons.deblur_outlined),
                  ),
                ),
                const Padding(padding: EdgeInsets.only(right: 8.0)),
                SizedBox(
                  height: 40,
                  width: 40,
                  child: FloatingActionButton(
                    onPressed: () {},
                    elevation: 0,
                    backgroundColor: _colorScheme.surface,
                    child: const Icon(Icons.more_vert),
                  ),
                )
              ]
            ],
          ),
        ),
      );
    });
  }
}


///EmailReplyOptions

class EmailReplyOptions extends StatefulWidget {
  const EmailReplyOptions({super.key});

  @override
  State<EmailReplyOptions> createState() => _EmailReplyOptionsState();
}

class _EmailReplyOptionsState extends State<EmailReplyOptions> {
  late final ColorScheme _colorScheme = Theme.of(context).colorScheme;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 100) {
        return const SizedBox.shrink();
      }
      return Row(
        children: [
          Expanded(
              child: TextButton(
            style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all(_colorScheme.onInverseSurface)),
            onPressed: () {},
            child: Text(
              'Reply',
              style: TextStyle(color: _colorScheme.onSurfaceVariant),
            ),
          )),
          const SizedBox(
            width: 8,
          ),
          Expanded(
              child: TextButton(
            style: ButtonStyle(
                backgroundColor:
                    WidgetStateProperty.all(_colorScheme.onInverseSurface)),
            onPressed: () {},
            child: Text(
              'Reply All',
              style: TextStyle(color: _colorScheme.onSurfaceVariant),
            ),
          ))
        ],
      );
    });
  }
}
