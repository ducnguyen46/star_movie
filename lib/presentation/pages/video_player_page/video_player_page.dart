import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:gap/gap.dart';
import 'package:star_movie/share/resources/resources.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

@RoutePage()
class VideoPlayerPage extends StatefulWidget {
  const VideoPlayerPage({
    super.key,
    @PathParam('video_key') required this.videoKey,
  });

  final String videoKey;

  @override
  State<VideoPlayerPage> createState() => _VideoPlayerPageState();
}

class _VideoPlayerPageState extends State<VideoPlayerPage> {
  late YoutubePlayerController _controller;

  @override
  void initState() {
    super.initState();
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.landscapeRight,
      DeviceOrientation.landscapeLeft,
    ]);

    _controller = YoutubePlayerController(
      initialVideoId: widget.videoKey,
      flags: const YoutubePlayerFlags(
        disableDragSeek: true,
      ),
    );
  }

  @override
  void dispose() {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
    ]);
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return YoutubePlayer(
      controller: _controller,
      topActions: [
        CloseButton(
          color: AppColors.white,
          onPressed: () {
            context.router.back();
          },
        ),
      ],
      bottomActions: [
        const Gap(Dimens.d24),
        CurrentPosition(),
        const Gap(Dimens.d12),
        ProgressBar(
          isExpanded: true,
          colors: ProgressBarColors(
            playedColor: AppColors.redPrimary,
            handleColor: AppColors.redPrimary,
            bufferedColor: AppColors.white.withOpacity(0.5),
            backgroundColor: AppColors.white.withOpacity(0.2),
          ),
        ),
        const Gap(Dimens.d12),
        RemainingDuration(),
        const Gap(Dimens.d24),
      ],
    );
  }
}
