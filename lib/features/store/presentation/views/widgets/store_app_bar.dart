import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:shoply/core/constants/colors.dart';
import 'package:shoply/core/helpers/extensions.dart';

class StoreAppBar extends StatelessWidget {
  const StoreAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      title: Text(
        "Store",
        style: context.tt.titleLarge?.copyWith(color: JColors.white),
      ),
      pinned: true,
      floating: false,
      expandedHeight: 110.h,
      flexibleSpace: LayoutBuilder(
        builder: (context, BoxConstraints constraints) {
          final top = constraints.biggest.height;
          final double minHeight =
              MediaQuery.of(context).padding.top + kToolbarHeight;
          final double expandRatio =
          ((top - minHeight) / (110.h - minHeight)).clamp(0.0, 1.0);
          final double currentRatio = 50.r * expandRatio;

          return Stack(
            clipBehavior: Clip.none,
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(currentRatio),
                    bottomLeft: Radius.circular(currentRatio),
                  ),
                  color: const Color(0xFF0857A0),
                ),
              ),
              Positioned(
                right: 0,
                top: 0,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 100),
                  opacity: expandRatio,
                  child: ClipRRect(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(currentRatio),
                    ),
                    child: Container(
                      height: top,
                      width: 120.w,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(160.r * expandRatio),
                        ),
                        color: const Color(0xFF3171AB).withValues(alpha: 0.4),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 20,
                right: 20,
                bottom: -20,
                child: AnimatedOpacity(
                  duration: const Duration(milliseconds: 100),
                  opacity: expandRatio < 0.3 ? 0.0 : expandRatio,
                  child: IgnorePointer(
                    ignoring: expandRatio < 0.3,
                    child: const TextField(
                      decoration: InputDecoration(
                        hintText: "Search in Store",
                      ),
                    ),
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
