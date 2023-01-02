import 'package:flame/experimental.dart';
import 'package:flame/components.dart';
import 'package:flame/game.dart';
import 'package:knight_counter_demo/counter.dart';
import 'package:knight_counter_demo/knight.dart';

class MyGame extends FlameGame with HasTappableComponents {
  int count = 0;

  @override
  Future<void> onLoad() async {
    camera.zoom = 4;
    await add(Knight(
      position: size / 2,
      anchor: Anchor.center,
      size: Vector2(120, 80),
    ));
    await add(Counter(
      position: size / 2..sub(Vector2(0, 20)),
      anchor: Anchor.center,
    ));
  }
}