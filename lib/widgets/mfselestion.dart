import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:thunder_workout_app/theme/colors.dart';

import '../theme/layout.dart';

class OptionWidget extends StatelessWidget {
  final bool enable;
  final String state;
  final String detail;
  final Function onTap;

  const OptionWidget({
    Key? key,
    required this.enable,
    required this.state,
    required this.detail,
    required this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => onTap(),
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: AppLayout.getHeight(10),vertical: AppLayout.getHeight(10)),
        height: AppLayout.getHeight(140),
        width: AppLayout.getHeight(140), // Increase the width to fit the content
        decoration: BoxDecoration(
          color: bFColor ,
          borderRadius: BorderRadius.circular(AppLayout.getHeight(12)),
          boxShadow: [
            BoxShadow(
              spreadRadius: 2,
              blurRadius: 2,
              color: Colors.black12,
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    state,
                    style: TextStyle(
                      fontSize: AppLayout.getHeight(18),
                      letterSpacing: 2,
                      color: bTColor,
                      fontFamily: 'Bebas'
                    ),
                  ),
                  SizedBox(height: AppLayout.getHeight(8)),
                  Text(
                    detail,
                    style: TextStyle(
                      fontSize: AppLayout.getHeight(14),
                      color: Colors.white,
                    ),
                  ),

                ],
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Padding(
                  padding:  EdgeInsets.all(AppLayout.getHeight(8)),
                  child: Container(
                    height: AppLayout.getHeight(24),
                    width: AppLayout.getHeight(24),
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: bSColor
                    ),
                    child: Center(
                      child: Icon(
                        enable ? Icons.check : null,
                        color: enable ? bTColor
                            : Colors.grey,
                        size: AppLayout.getHeight(18),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
