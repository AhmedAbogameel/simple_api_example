import 'package:api/core/router/router.dart';
import 'package:flutter/material.dart';

showSnackBar(String title)=> ScaffoldMessenger.of(MagicRouter.currentContext).showSnackBar(
    SnackBar(content: Text(title))
);