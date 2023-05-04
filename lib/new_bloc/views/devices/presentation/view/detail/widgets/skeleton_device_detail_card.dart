import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class SkeletonDeviceDetailCard extends StatelessWidget {
  const SkeletonDeviceDetailCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: SkeletonItem(
        child: Column(
          children: [
            SizedBox(height: 25,),
            SkeletonLine(
              style: SkeletonLineStyle(
                height: 16,
                width: 70,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            SizedBox(height: 10),
            SkeletonParagraph(
              style: SkeletonParagraphStyle(
                lines: 6,
                spacing: 8,
                lineStyle: SkeletonLineStyle(
                  randomLength: true,
                  height: 10,
                  borderRadius: BorderRadius.circular(8),
                  minLength: MediaQuery.of(context).size.width / 2,
                ),
              ),
            ),
            SizedBox(height: 10),
            SkeletonParagraph(
              style: SkeletonParagraphStyle(
                lines: 4,
                spacing: 8,
                lineStyle: SkeletonLineStyle(
                  randomLength: true,
                  height: 10,
                  borderRadius: BorderRadius.circular(8),
                  minLength: MediaQuery.of(context).size.width / 2,
                ),
              ),
            ),
            SizedBox(height: 40),
            SkeletonLine(
              style: SkeletonLineStyle(
                height: 16,
                width: 70,
                borderRadius: BorderRadius.circular(8),
              ),
            ),
            SizedBox(height: 30),
            Row(
              children: [
                SkeletonLine(
                  style: SkeletonLineStyle(
                    height: 40,
                    width: 70,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                SizedBox(width: 8),
                SkeletonLine(
                  style: SkeletonLineStyle(
                    height: 40,
                    width: 70,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                SizedBox(width: 8),
                SkeletonLine(
                  style: SkeletonLineStyle(
                    height: 40,
                    width: 70,
                    borderRadius: BorderRadius.circular(8),
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
