import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class SkeletonNotificationsCenterCard extends StatelessWidget {
  const SkeletonNotificationsCenterCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SkeletonItem(
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SkeletonAvatar(
                  style: SkeletonAvatarStyle(height: 35, width: 35, borderRadius: BorderRadius.circular(30)),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SkeletonLine(
                      style: SkeletonLineStyle(
                        height: 8,
                        width: 200,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    SkeletonLine(
                      style: SkeletonLineStyle(
                        height: 8,
                        width: 120,
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                  ],
                ),
                SkeletonItem(
                    child: SizedBox(
                  width: 80,
                )),

              ],
            ),
            SizedBox(height: 10),
            SkeletonLine(
              style: SkeletonLineStyle(
                height: 2,
                width: 350,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            //  SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
