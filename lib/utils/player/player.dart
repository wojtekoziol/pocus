import 'package:audioplayers/audio_cache.dart';
import 'package:pocus/utils/player/track_type.dart';

abstract class Player {
  static final _audioCache = AudioCache();

  static void play(TrackType trackType) {
    if (trackType == TrackType.pomodoroTrack) {
      _audioCache.play('sounds/pomodoro.mp3');
    } else if (trackType == TrackType.breakTrack) {
      _audioCache.play('sounds/break.mp3');
    }
  }
}
