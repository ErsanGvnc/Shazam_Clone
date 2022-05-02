// ignore_for_file: prefer_const_constructors, unused_local_variable

import 'package:shazam_clone/acr/margin.dart';
import 'package:shazam_clone/acr/providers.dart';
import 'package:shazam_clone/acr/theme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'dart:math' as math show sin, pi, sqrt;

import 'package:flutter/animation.dart';

class HomePage extends StatefulHookWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  @override
  void initState() {
    super.initState();

    context.read(homeVM).init(context);

    context.read(homeVM).controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
  }

  @override
  Widget build(BuildContext context) {
    final loading = useProvider(homeVM.select((v) => v.loading));
    var screenwidth = MediaQuery.of(context).size.width;
    var screenheight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: bgColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Spacer(),
            InkWell(
              onTap: () {
                if (!loading) {
                  context.read(homeVM).start();
                } else {
                  context.read(homeVM).stop();
                }
              },
              child: Ripples(
                color: Colors.grey,
                size: loading ? 180 : 100,
                child: Container(
                  color: Colors.transparent,
                  width: 160,
                  height: 160,
                  margin: const EdgeInsets.all(20),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/images/shazam-logo.png",
                      color: Colors.white,
                      //height: 40,
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            // Container(
            //   //color: Colors.red,
            //   height: 55,
            //   width: 200,
            //   child: CupertinoButton(
            //     onPressed: () {
            //       //print("object");
            //       // if (!loading) {
            //       //   context.read(homeVM).start();
            //       // } else {
            //       //   context.read(homeVM).stop();
            //       // }
            //     },
            //     child: Text(
            //       'Tap to ${loading ? 'Cancel' : 'Identify'}',
            //       style: GoogleFonts.montserrat(
            //         color: Colors.white,
            //         fontSize: 17,
            //         fontWeight: FontWeight.w500,
            //       ),
            //     ),
            //   ),
            // ),
            const YMargin(100)
          ],
        ),
      ),
    );
  }
}

class Ripples extends HookWidget {
  const Ripples({
    Key? key,
    this.size = 80.0,
    this.color = kPrimaryColor,
    this.onPressed,
    required this.child,
  }) : super(key: key);

  final double size;
  final Color color;
  final Widget child;
  final VoidCallback? onPressed;

  Widget _button() {
    final _controller = useProvider(homeVM.select((v) => v.controller));

    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(size),
        child: DecoratedBox(
          decoration: BoxDecoration(
            gradient: RadialGradient(
              colors: <Color>[color, Color.lerp(color, Colors.black, .05)!],
            ),
          ),
          child: ScaleTransition(
            scale: Tween(begin: 0.95, end: 1.0).animate(
              CurvedAnimation(
                parent: _controller,
                curve: const _PulsateCurve(),
              ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final _controller = useProvider(homeVM.select((v) => v.controller));

    return CustomPaint(
      painter: _CirclePainter(
        _controller,
        color: color,
      ),
      child: SizedBox(
        width: size * 2.125,
        height: size * 2.125,
        child: _button(),
      ),
    );
  }
}

class _CirclePainter extends CustomPainter {
  _CirclePainter(
    this._animation, {
    required this.color,
  }) : super(repaint: _animation);

  final Color? color;
  final Animation<double> _animation;

  void circle(Canvas canvas, Rect rect, double value) {
    final double opacity = (1.0 - (value / 4.0)).clamp(0.0, 1.0);
    final Color _color = color!.withOpacity(opacity);

    final double size = rect.width / 2;
    final double area = size * size;
    final double radius = math.sqrt(area * value / 4);

    final Paint paint = Paint()..color = _color;
    canvas.drawCircle(rect.center, radius, paint);
  }

  @override
  void paint(Canvas canvas, Size size) {
    final Rect rect = Rect.fromLTRB(0.0, 0.0, size.width, size.height);

    for (int wave = 3; wave >= 0; wave--) {
      circle(canvas, rect, wave + _animation.value);
    }
  }

  @override
  bool shouldRepaint(_CirclePainter oldDelegate) => true;
}

class _PulsateCurve extends Curve {
  const _PulsateCurve();

  @override
  double transform(double t) {
    if (t == 0 || t == 1) {
      return 0.01;
    }
    return math.sin(t * math.pi);
  }
}
