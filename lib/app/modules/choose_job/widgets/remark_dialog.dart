import 'package:example_nav2/widgets/common/button/app_button.dart';
import 'package:example_nav2/widgets/input/text_input_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RemarkDialog extends StatefulWidget {
  const RemarkDialog({Key? key}) : super(key: key);

  @override
  State<RemarkDialog> createState() => _RemarkDialogState();
}

class _RemarkDialogState extends State<RemarkDialog> {
  String? _note = '';
  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      insetPadding: EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
        padding: EdgeInsets.all(16),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Center(
            child: Text('Ghi chú',
                style: TextStyle(fontWeight: FontWeight.w700, fontSize: 19.sp)),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: TextInputField(
              focusColor: Color(0xFFD8D8D8),
              focusBorderColor: Color(0xFFD8D8D8),
              borderColor: Color(0xFFD8D8D8),
              minLines: 5,
              maxLines: 10,
              onChanged: (value) {
                _note = value;
              },
            ),
          ),
          AppButton(
            text: 'Lưu ghi chú',
            borderRadius: BorderRadius.circular(15),
            onTap: () {
              Navigator.of(context).pop(_note ?? '');
            },
          ),
        ]),
      ),
    );
  }
}
