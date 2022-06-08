import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeIn extends StatelessWidget {
  final double delay;
  final Widget child;
  const FadeIn({Key? key, required this.child, required this.delay})
      : super(key: key);

  TimelineTween<Prop> createTween() {
    var tween = TimelineTween<Prop>();
    var scene = tween.addScene(
        duration: const Duration(milliseconds: 400), begin: Duration.zero);
    scene.animate(Prop.translateX,
        tween: Tween<double>(begin: 130.0, end: 0.0), curve: Curves.easeOut);
    scene.animate(Prop.opacity, tween: Tween<double>(begin: 0.0, end: 1.0));
    return tween;
  }

  @override
  Widget build(BuildContext context) {
    final tween = createTween();
    return PlayAnimation<TimelineValue<Prop>>(
        delay: Duration(milliseconds: (200 * delay).round()),
        duration: tween.duration,
        builder: ((context, child, value) {
          return Opacity(
            opacity: value.get(Prop.opacity),
            child: Transform.translate(
              offset: Offset(value.get(Prop.translateX), 0),
              child: child,
            ),
          );
        }),
        tween: tween,
        child: child);
  }
}
