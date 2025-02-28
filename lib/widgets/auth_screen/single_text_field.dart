import 'package:flutter/material.dart';

class SingleTextField extends StatefulWidget {
  const SingleTextField({
    required this.icon,
    required this.title,
    required this.placeholder,
    required this.focusNode,
    required this.onFieldChange,
    required this.onFieldSubmit,
    TextInputType? inputType,
    TextInputAction? inputAction,
    bool? isPrivateField,
    super.key,
  })  : isPrivateField = isPrivateField ?? false,
        inputType = inputType ?? TextInputType.text,
        inputAction = inputAction ?? TextInputAction.done;

  final IconData icon;
  final String title;
  final String placeholder;
  final FocusNode focusNode;
  final void Function(String value) onFieldChange;
  final void Function(String value) onFieldSubmit;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final bool isPrivateField;

  @override
  State<SingleTextField> createState() => _SingleTextFieldState();
}

class _SingleTextFieldState extends State<SingleTextField> {
  late bool hasFocus;
  late bool isTextHidden;

  var insertedText = "";

  @override
  void initState() {
    super.initState();
    isTextHidden = widget.isPrivateField;
    hasFocus = widget.focusNode.hasPrimaryFocus;
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final maxHeight = constraints.maxHeight;
        final maxWidth = constraints.maxWidth;

        return SizedBox(
          height: maxHeight,
          width: maxWidth,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: maxHeight * 0.2,
                width: maxWidth,
                child: Text(
                  widget.title,
                  style: const TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                  ),
                ),
              ),
              Container(
                height: maxHeight * 0.7,
                width: maxWidth,
                margin: const EdgeInsets.only(top: 10),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: widget.focusNode.hasPrimaryFocus
                        ? Theme.of(context).primaryColor
                        : Colors.grey.withValues(alpha: 0.5),
                    width: 2,
                  ),
                ),
                child: Row(
                  children: [
                    Container(
                      height: maxHeight * 0.7,
                      width: maxWidth * 0.15,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.horizontal(
                          left: Radius.circular(10),
                        ),
                      ),
                      child: Icon(
                        widget.icon,
                        color: Theme.of(context).primaryColor,
                        size: 28,
                      ),
                    ),
                    Flexible(
                      flex: 1,
                      child: Container(
                        height: maxHeight * 0.7,
                        alignment: Alignment.centerLeft,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        child: TextField(
                          focusNode: widget.focusNode,
                          textAlign: TextAlign.left,
                          cursorHeight: 23,
                          cursorColor: Theme.of(context).primaryColor,
                          obscureText: isTextHidden,
                          keyboardType: widget.inputType,
                          textInputAction: widget.inputAction,
                          style: TextStyle(
                            fontSize: 22,
                            color: Theme.of(context).secondaryHeaderColor,
                          ),
                          decoration: InputDecoration(
                            border: InputBorder.none,
                            hintText: widget.placeholder,
                            hintStyle: const TextStyle(
                              fontSize: 21,
                              color: Colors.grey,
                            ),
                          ),
                          onChanged: (newValue) {
                            setState(() {
                              insertedText = newValue.trim();
                            });

                            widget.onFieldChange(
                              newValue.trim(),
                            );
                          },
                          onEditingComplete: () {
                            FocusManager.instance.primaryFocus!.unfocus();

                            widget.onFieldSubmit(
                              insertedText.trim(),
                            );
                          },
                        ),
                      ),
                    ),
                    if (widget.isPrivateField)
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            isTextHidden = !isTextHidden;
                          });
                        },
                        child: Container(
                          height: maxHeight * 0.7,
                          width: maxWidth * 0.15,
                          decoration: const BoxDecoration(
                            borderRadius: BorderRadius.horizontal(
                              left: Radius.circular(10),
                            ),
                          ),
                          child: Icon(
                            isTextHidden
                                ? Icons.visibility_off
                                : Icons.remove_red_eye,
                            color: Theme.of(context).primaryColor,
                            size: 28,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
