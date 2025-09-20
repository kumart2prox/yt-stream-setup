# YouTube 24/7 Stream Setup

This repository contains a configuration for running a 24/7 YouTube stream optimized for Railway's $5 credit tier. The setup uses FFmpeg to stream video and audio content continuously to YouTube.

## Features

- 24/7 continuous streaming capability
- Optimized for Railway's $5 credit tier
- Video and audio loop functionality
- Automatic restart on stream interruption
- 480p resolution for optimal quality/resource balance

## Prerequisites

- A Railway account with credit
- A YouTube channel with live streaming enabled
- Your YouTube stream key
- FFmpeg installed (automatically handled by the Dockerfile)

## Configuration

The stream is configured with the following optimized settings:

- Resolution: 854x480 (480p)
- Video Bitrate: 800 kbps
- Audio Bitrate: 64 kbps
- Frame Rate: 25 fps
- Video Codec: H.264
- Audio Codec: AAC
- Audio Sample Rate: 44.1 kHz

## Setup Instructions

1. Fork this repository
2. Set up a new project on Railway
3. Connect your forked repository to Railway
4. Add your YouTube stream key as an environment variable:
   ```
   YOUTUBE_KEY=your_stream_key_here
   ```
5. Deploy the project

## Files

- `start.sh`: Main script that handles the streaming
- `Dockerfile`: Container configuration
- `mainvideonosound.mp4`: Your main video file (add your own)
- `song2.mp3`: Background music file (add your own)

## Environment Variables

- `YOUTUBE_KEY`: Your YouTube stream key (required)

## Resource Usage

This setup is optimized to run within Railway's $5 credit tier with the following optimizations:
- Reduced video bitrate (800 kbps)
- Optimized audio settings (64 kbps)
- Efficient keyframe interval (60)
- Reduced frame rate (25 fps)

## Troubleshooting

If you encounter issues:

1. Check your YouTube stream key is correctly set
2. Verify your video and audio files are present
3. Monitor Railway logs for any errors
4. Ensure your YouTube account has live streaming enabled

## Contributing

Feel free to submit issues and enhancement requests!

## License

This project is open source and available under the MIT License.
