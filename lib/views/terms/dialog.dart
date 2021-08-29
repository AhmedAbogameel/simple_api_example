import 'package:api/core/router/router.dart';
import 'package:api/views/terms/cubit.dart';
import 'package:flutter/cupertino.dart';

showTermsDialog(BuildContext context){
  final controller = TermsCubit.of(context);
  showCupertinoDialog(
    context: MagicRouter.currentContext,
    builder: (context) => CupertinoAlertDialog(
      title: Text('Terms'),
      content: Text('Bla '*100),
      actions: [
        CupertinoButton(
          child: Text('Agree'),
          onPressed: (){
            controller.agree(true);
            MagicRouter.pop();
            // == Navigator.of(context).pop();
          },
        ),
        CupertinoButton(
          child: Text('Cancel'),
          onPressed: MagicRouter.pop,
        )
      ],
    ),
  );
}