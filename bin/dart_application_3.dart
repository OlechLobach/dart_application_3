import 'package:test/test.dart';
abstract class MediaPlayer {
  void play();
  void pause();
  void stop();
  void seekTo(int position);
}

// Клас, що реалізує інтерфейс для відтворення аудіо (MP3)
class MP3Player implements MediaPlayer {
  @override
  void play() {
    print('Playing MP3 file...');
  }

  @override
  void pause() {
    print('Pausing MP3 file...');
  }

  @override
  void stop() {
    print('Stopping MP3 file...');
  }

  @override
  void seekTo(int position) {
    print('Seeking to position $position in MP3 file...');
  }
}

// Клас, що реалізує інтерфейс для відтворення відео
class VideoPlayer implements MediaPlayer {
  @override
  void play() {
    print('Playing video file...');
  }

  @override
  void pause() {
    print('Pausing video file...');
  }

  @override
  void stop() {
    print('Stopping video file...');
  }

  @override
  void seekTo(int position) {
    print('Seeking to frame $position in video file...');
  }
}

// Функція для використання MediaPlayer
void playMedia(MediaPlayer media) {
  media.play();
  media.pause();
  media.seekTo(30);
  media.stop();
}


void main() {
  group('Тести для класів MP3Player та VideoPlayer', () {
    late MP3Player mp3Player;
    late VideoPlayer videoPlayer;

    setUp(() {
      // Початкова ініціалізація об'єктів перед кожним тестом
      mp3Player = MP3Player();
      videoPlayer = VideoPlayer();
    });

    test('Перевірка відтворення MP3 файлу', () {
      // Очікуємо, що результат виклику play буде не пустим
      expect(() => mp3Player.play(), returnsNormally);
    });

    test('Перевірка відтворення відеофайлу', () {
      // Очікуємо, що результат виклику play буде не пустим
      expect(() => videoPlayer.play(), returnsNormally);
    });

    test('Перевірка зупинки відтворення MP3 файлу', () {
      // Очікуємо, що результат виклику stop буде не пустим
      expect(() => mp3Player.stop(), returnsNormally);
    });

    test('Перевірка зупинки відтворення відеофайлу', () {
      // Очікуємо, що результат виклику stop буде не пустим
      expect(() => videoPlayer.stop(), returnsNormally);
    });
  });
}