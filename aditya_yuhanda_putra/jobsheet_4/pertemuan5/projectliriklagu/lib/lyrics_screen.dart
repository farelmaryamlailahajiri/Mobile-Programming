import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:video_player/video_player.dart';
import 'package:google_fonts/google_fonts.dart';

class LyricLine {
  final double time;
  final String text;
  LyricLine({required this.time, required this.text});
  factory LyricLine.fromJson(Map<String, dynamic> j) {
    return LyricLine(
      time: (j['time'] as num).toDouble(),
      text: j['text'] as String,
    );
  }
}

class LyricsScreen extends StatefulWidget {
  const LyricsScreen({super.key});
  @override
  State<LyricsScreen> createState() => _LyricsScreenState();
}

class _LyricsScreenState extends State<LyricsScreen> {
  late VideoPlayerController _videoController;
  List<LyricLine> _lyrics = [];
  int _activeIndex = 0;
  late ScrollController _scrollController;
  bool _isPlaying = false;
  bool _isSeeking = false;
  final double _lineHeight = 32.0;

  @override
  void initState() {
    super.initState();
    _scrollController = ScrollController();
    _initVideo();
  }

  Future<void> _initVideo() async {
    try {
      _videoController = VideoPlayerController.asset('assets/bg_video.mp4');
      await _videoController.initialize();
      _videoController.addListener(_videoListener);
      setState(() {});

      // Load lyrics
      final String raw = await rootBundle.loadString('assets/lyrics.json');
      final List<dynamic> j = json.decode(raw) as List<dynamic>;
      _lyrics = j
          .map((e) => LyricLine.fromJson(e as Map<String, dynamic>))
          .toList();
    } catch (e) {
      print('Error initializing video: $e');
    }
  }

  void _videoListener() {
    if (!mounted) return;

    if (!_isSeeking) {
      setState(() {
        _isPlaying = _videoController.value.isPlaying;
      });
      _updateActiveIndex(_videoController.value.position);
      _autoScroll();
    }
  }

  void _updateActiveIndex(Duration pos) {
    final seconds = pos.inMilliseconds / 1000.0;
    int index = 0;
    for (int i = 0; i < _lyrics.length; i++) {
      if (seconds >= _lyrics[i].time &&
          (i + 1 >= _lyrics.length || seconds < _lyrics[i + 1].time)) {
        index = i;
        break;
      }
    }
    if (index != _activeIndex) {
      setState(() {
        _activeIndex = index;
      });
    }
  }

  void _autoScroll() {
    if (!_scrollController.hasClients) return;
    final screenHeight = MediaQuery.of(context).size.height;
    final targetOffset =
        (_activeIndex * _lineHeight) - (screenHeight / 3.5) + (_lineHeight / 2);
    _scrollController.animateTo(
      targetOffset.clamp(0.0, _scrollController.position.maxScrollExtent),
      duration: const Duration(milliseconds: 300),
      curve: Curves.easeOut,
    );
  }

  Future<void> _togglePlayPause() async {
    if (_videoController.value.isPlaying) {
      await _videoController.pause();
    } else {
      if (_videoController.value.position >= _videoController.value.duration) {
        await _videoController.seekTo(Duration.zero);
      }
      await _videoController.play();
    }
  }

  Future<void> _stopPlayback() async {
    await _videoController.pause();
    await _videoController.seekTo(Duration.zero);
    setState(() {
      _activeIndex = 0;
    });
  }

  String _formatDuration(Duration d) {
    return '${d.inMinutes.toString().padLeft(2, '0')}:'
        '${d.inSeconds.remainder(60).toString().padLeft(2, '0')}';
  }

  Future<void> _handleBack() async {
    // Stop video playback
    await _videoController.pause();
    await _videoController.seekTo(Duration.zero);

    if (mounted && context.mounted) {
      // Pop the current screen
      Navigator.of(context).pop();
    }
  }

  @override
  void dispose() {
    _videoController.removeListener(_videoListener);
    _videoController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!_videoController.value.isInitialized) {
      return const Scaffold(body: Center(child: CircularProgressIndicator()));
    }

    // Konstanta untuk tinggi header dan footer
    const double headerHeight = 80.0;
    const double footerHeight = 140.0;

    return WillPopScope(
      onWillPop: () async {
        await _handleBack();
        return false;
      },
      child: Scaffold(
        body: Stack(
          children: [
            // Video Background
            Positioned.fill(
              child: FittedBox(
                fit: BoxFit.cover,
                child: SizedBox(
                  width: _videoController.value.size.width,
                  height: _videoController.value.size.height,
                  child: VideoPlayer(_videoController),
                ),
              ),
            ),

            // Dark Overlay
            Positioned.fill(
              child: Container(color: Colors.black.withOpacity(0.8)),
            ),

            // Content Container (untuk mengatur area scrollable)
            Positioned.fill(
              child: Column(
                children: [
                  // Header dengan gradient
                  Container(
                    height: headerHeight,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                          Colors.black.withOpacity(0.8),
                          Colors.black.withOpacity(0.0),
                        ],
                      ),
                    ),
                    child: SafeArea(
                      bottom: false,
                      child: Row(
                        children: [
                          IconButton(
                            icon: const Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                            ),
                            onPressed: _handleBack,
                            iconSize: 24,
                          ),
                          const SizedBox(width: 12),
                          const Text(
                            "     Everything U Are - Hindia",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // Lyrics Area (area scrollable dengan fade edges)
                  Expanded(
                    child: ShaderMask(
                      shaderCallback: (Rect bounds) {
                        return LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.transparent,
                            Colors.white,
                            Colors.white,
                            Colors.transparent,
                          ],
                          stops: const [0.0, 0.05, 0.95, 1.0],
                        ).createShader(bounds);
                      },
                      blendMode: BlendMode.dstIn,
                      child: ListView.builder(
                        controller: _scrollController,
                        physics: const BouncingScrollPhysics(),
                        itemCount: _lyrics.length,
                        padding: EdgeInsets.symmetric(
                          vertical: MediaQuery.of(context).size.height * 0.1,
                          horizontal: 20,
                        ),
                        itemBuilder: (context, index) {
                          final isActive = index == _activeIndex;
                          return AnimatedContainer(
                            duration: const Duration(milliseconds: 300),
                            height: _lineHeight,
                            child: Center(
                              child: Text(
                                _lyrics[index].text,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.robotoMono(
                                  fontSize: isActive ? 21 : 14,
                                  color: isActive
                                      ? Colors.white
                                      : Colors.grey[500],
                                  fontWeight: isActive
                                      ? FontWeight.bold
                                      : FontWeight.normal,
                                  letterSpacing: isActive ? 0.25 : 0,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),

                  // Footer dengan gradient
                  Container(
                    height: footerHeight,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.bottomCenter,
                        end: Alignment.topCenter,
                        colors: [
                          Colors.black.withOpacity(0.8),
                          Colors.black.withOpacity(0.0),
                        ],
                      ),
                    ),
                    child: SafeArea(
                      top: false,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(
                          14.0,
                          0.0,
                          14.0,
                          8.0,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            // Time Slider
                            Row(
                              children: [
                                Text(
                                  _formatDuration(
                                    _videoController.value.position,
                                  ),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                                Expanded(
                                  child: SliderTheme(
                                    data: SliderTheme.of(context).copyWith(
                                      trackHeight: 4,
                                      thumbShape: const RoundSliderThumbShape(
                                        enabledThumbRadius: 6,
                                      ),
                                      overlayShape:
                                          const RoundSliderOverlayShape(
                                            overlayRadius: 12,
                                          ),
                                    ),
                                    child: Slider(
                                      value: _videoController
                                          .value
                                          .position
                                          .inMilliseconds
                                          .toDouble(),
                                      min: 0.0,
                                      max: _videoController
                                          .value
                                          .duration
                                          .inMilliseconds
                                          .toDouble(),
                                      onChangeStart: (_) => _isSeeking = true,
                                      onChanged: (value) {
                                        setState(() {
                                          _videoController.seekTo(
                                            Duration(
                                              milliseconds: value.toInt(),
                                            ),
                                          );
                                        });
                                      },
                                      onChangeEnd: (value) {
                                        _isSeeking = false;
                                        _videoController.seekTo(
                                          Duration(milliseconds: value.toInt()),
                                        );
                                      },
                                      activeColor: Colors.white,
                                      inactiveColor: Colors.grey[700],
                                    ),
                                  ),
                                ),
                                Text(
                                  _formatDuration(
                                    _videoController.value.duration,
                                  ),
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 8),

                            // Control Buttons
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton(
                                  onPressed: _stopPlayback,
                                  iconSize: 48,
                                  color: Colors.white,
                                  icon: const Icon(Icons.stop_circle_outlined),
                                ),
                                const SizedBox(width: 20),
                                IconButton(
                                  onPressed: _togglePlayPause,
                                  iconSize: 48,
                                  color: Colors.white,
                                  icon: Icon(
                                    _isPlaying
                                        ? Icons.pause_circle_filled
                                        : Icons.play_circle_filled,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
