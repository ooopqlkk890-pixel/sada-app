import 'dart:ui';
import 'package:flutter/material.dart';
import 'theme.dart';

/// شعار "صدى" بتوهج نيون: موجة صوتية + كلمة متدرجة (ماجنتا ← بنفسجي ← سيان)
class SadaLogo extends StatelessWidget {
  final double size;
  const SadaLogo({super.key, this.size = 28});

  @override
  Widget build(BuildContext context) {
    Widget word() => ShaderMask(
          shaderCallback: (r) => const LinearGradient(
            colors: [SadaColors.neon, SadaColors.violet, SadaColors.cyan],
          ).createShader(r),
          child: Text('صدى',
              style: TextStyle(fontSize: size, fontWeight: FontWeight.w900, height: 1.1, color: Colors.white)),
        );
    return Row(mainAxisSize: MainAxisSize.min, children: [
      Icon(Icons.graphic_eq_rounded, size: size * 0.95, color: SadaColors.cyan,
          shadows: [Shadow(color: SadaColors.cyan.withOpacity(0.9), blurRadius: size * 0.6)]),
      SizedBox(width: size * 0.2),
      Stack(alignment: Alignment.center, children: [
        ImageFiltered(imageFilter: ImageFilter.blur(sigmaX: size * 0.18, sigmaY: size * 0.18), child: Opacity(opacity: 0.8, child: word())),
        word(),
      ]),
    ]);
  }
}
