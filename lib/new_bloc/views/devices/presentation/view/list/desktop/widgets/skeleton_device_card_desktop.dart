import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class SkeletonDeviceCardDesktop extends StatelessWidget {
  const SkeletonDeviceCardDesktop({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SkeletonItem(
        child: Column(
          children: [
            SkeletonParagraph(
              style: SkeletonParagraphStyle(
                lines: 2,
                spacing: 10,
                lineStyle: SkeletonLineStyle(
                  randomLength: true,
                  height: 10,
                  borderRadius: BorderRadius.circular(8),
                  minLength: MediaQuery.of(context).size.width / 2,
                ),
              ),
            ),
            SizedBox(height: 12),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10),
                  child: SkeletonLine(
                    style: SkeletonLineStyle(
                      height: 12,
                      width: 100,
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                SkeletonLine(
                  style: SkeletonLineStyle(
                    height: 12,
                    width: 100,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                SkeletonAvatar(
                  style: SkeletonAvatarStyle(
                    height: 25,
                    width: 25,
                    borderRadius: BorderRadius.circular(30)
                  ),
                ),
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
            SizedBox(height: 12),
          ],
        ),
      ),
    );
  }
}
