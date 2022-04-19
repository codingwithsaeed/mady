import 'package:flutter/material.dart';

class MoreCardItem extends StatelessWidget {
  final String _title;
  final IconData? _leading;
  final IconData _trailing;
  final String _subTitle;
  final VoidCallback? _onTap;
  const MoreCardItem({
    Key? key,
    required String title,
    String subtitle = '',
    IconData? leading,
    IconData trailing = Icons.arrow_forward_ios,
    VoidCallback? onTap,
  })  : _leading = leading,
        _trailing = trailing,
        _title = title,
        _subTitle = subtitle,
        _onTap = onTap,
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: ListTile(
        onTap: _onTap,
        leading: _leading == null ? null : Icon(_leading),
        title: Text(_title),
        subtitle: _subTitle.isEmpty ? null : Text(_subTitle),
        trailing: Icon(_trailing),
      ),
    );
  }
}
