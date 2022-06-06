import 'package:flutter/material.dart';

SnackBar errorMessageView(String error) => SnackBar(
      behavior: SnackBarBehavior.floating,
      content: Text('Opps... Error: $error Ocurred'),
    );
