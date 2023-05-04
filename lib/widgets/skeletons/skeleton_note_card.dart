import 'package:flutter/material.dart';
import 'package:skeletons/skeletons.dart';

class SkeletonNoteCard extends StatelessWidget {
  const SkeletonNoteCard({
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
              children: [
                SkeletonAvatar(
                  style: SkeletonAvatarStyle(
                      shape: BoxShape.circle, width: 50, height: 50),
                ),
                SizedBox(width: 8),
                Expanded(
                  child: SkeletonParagraph(
                    style: SkeletonParagraphStyle(
                        lines: 2,
                        spacing: 6,
                        lineStyle: SkeletonLineStyle(
                          randomLength: true,
                          height: 10,
                          borderRadius: BorderRadius.circular(8),
                          minLength: MediaQuery.of(context).size.width / 6,
                          maxLength: MediaQuery.of(context).size.width / 3,
                        )),
                  ),
                )
              ],
            ),
            SizedBox(height: 12),
            SkeletonParagraph(
              style: SkeletonParagraphStyle(
                lines: 3,
                spacing: 6,
                lineStyle: SkeletonLineStyle(
                  randomLength: true,
                  height: 10,
                  borderRadius: BorderRadius.circular(8),
                  minLength: MediaQuery.of(context).size.width / 2,
                ),
              ),
            ),
            SizedBox(height: 12),
            SkeletonListTile(
              titleStyle: SkeletonLineStyle(
                maxLength: 10,
                width: 150,
              ),
              trailing: SkeletonAvatar(
                style: SkeletonAvatarStyle(
                    shape: BoxShape.circle, width: 30, height: 30),
              ),
            ),
            SkeletonListTile(
              titleStyle: SkeletonLineStyle(
                maxLength: 10,
                width: 150,
              ),
            ),
            SizedBox(height: 8),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SkeletonLine(
                  style: SkeletonLineStyle(
                    height: 16,
                    width: 64,
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                SkeletonLine(
                  style: SkeletonLineStyle(
                    height: 16,
                    width: 64,
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
