sudo systemctl status ssh
ip a
sudo apt install --y ffmpeg
sudo apt install -y ffmpeg
ffmpeg -version
ffprobe  -version
which ffmpeg
ffmpeg -codecs|grep 264
ffmpeg -formats|grep 264
ffmpeg -ecoders|less
ffmpeg -encoders|less
sudo apt install -y mediainfo curl wget git unzip
mkdir -p ~/dash-project/videos-original
mkdir -p ~/dash-project/videos-trascoded
mkdir -p ~/dash-project/dash-output
mkdir -p ~/dash-project/scripts
mkdir -p ~/dash-project/logs
ls -l ~/dash-project
tree ~/dash-project
ffmpeg -f lavfi -i testsrc=size=1280x720:rate=30 -t 5 ~/dash-project/videos-original/test_video.mp4
ffprobe ~/dash-project/videos-original/test_video.mp4
sudo apt install -y wget
cd ~/dash-project/videos-original
wget -0 videos1_hd.mp4 https://www.pexels.com/download/video/2512876
wget -O videos1_hd.mp4 https://www.pexels.com/download/video/251287
file viddeos1_hd.mp4
curl-I https://www.pexels.com/download/video/251287
curl -I https://www.pexels.com/download/video/251287
file videos1_hd.mp4
wget -O videos1_hd.mp4 https://www.pexels.com/download/video/251287
wget -O videos1_hd.mp4 https://www.pexels.com/download/video/2512876
file videos1_hd.mp4
wget -O videos1_hd.mp4 https://static.videezy.com/system/resources/previews/000/000/147/origial//plants_close2.mp4
wget -O videos1_hd.mp4 https://static.videezy.com/system/resources/previews/000/000/147/origial/plants_close2.mp4
wget -O videos1_hd.mp4 https://static.videezy.com/system/resources/previews/000/000/147/origial/Plants_close2.mp4
wget -O videos2_hd.mp4 https://static.videezy.com/system/resources/previews/000/000/147/origial/Plants_close2.mp4
file videos1_hd.mp4
wget -O videos1_hd.mp4 https://www.pexels.com/download/video/2512876
file videos1_hd.mp4
wget -O videos2_hd.mp4 https://static.videezy.com/system/resources/previews/000/000/147/original/Plants_close2.mp4
file videos2_hd.mp4
ffprobe ~/dash-project/videos-original/videos1_hd.mp4
ffprobe ~/dash-project/videos-original/videos2_hd.mp4
ls -l ~/dash-project/videos-originals
ls -l ~/dash-project/videos-original
cd ~/dash-project
for bitrate in 1500 2000 4000; do ffmpeg -i ~/dash-project/videos-original/videos1_hd.mp4-c:v libx264 -b:v ${bitrate}k -maxrate ${bitrate}k -bufsize $((bitrate*2))k -c:a aac -b:a 128k -pix_fmt yuv420p -movflags +faststart ~/dash-project/videos-trascoded/videos1_${bitrate}k.mp4; done
ls -l ~/dash-project
for bitrate in 1500 2000 4000; do ffmpeg -i ~/dash-project/videos-original/videos1_hd.mp4 \ -c:v libx264 -b:v ${bitrate}k -maxrate ${bitrate}k -bufsize $((bitrate*2))k -c:a aac -b:a 128k -pix_fmt yuv420p -movflags +faststart ~/dash-project/videos-trascoded/videos1_${bitrate}k.mp4; done
for bitrate in 1500 2000 4000; do ffmpeg -i ~/dash-project/videos-original/videos1_hd.mp4 -c:v libx264 -b:v ${bitrate}k -maxrate ${bitrate}k -bufsize $((bitrate*2))k -c:a aac -b:a 128k -pix_fmt yuv420p -movflags +faststart ~/dash-project/videos-trascoded/videos1_${bitrate}k.mp4; done
for bitrate in 1500 2000 4000; do ffmpeg -i ~/dash-project/videos-original/videos2_hd.mp4 -c:v libx264 -b:v ${bitrate}k -maxrate ${bitrate}k -bufsize $((bitrate*2))k -c:a aac -b:a 128k -pix_fmt yuv420p -movflags +faststart ~/dash-project/videos-trascoded/videos2_${bitrate}k.mp4; done
ls -l ~/dash-project
mkdir -p ~/dash-project/dash-output/video1
mkdir -p ~/dash-project/dash-output/video2
ffmpeg -y -i ~/dash-project/videos-trascoded/video1_1500k.mp4 -i ~/dash-project/videos-trascoded/video1_2000k.mp4 -i ~/dash-project/videos-trascoded/video1_4000k.mp4 map 0:v -map 1:v -map 2:v -map 0:a -c copy -f dash -seg_duration 4 -use_template 1 -use-timeline 1 -init_seg_name 'init-$RepresentationID$.m4s' -media_seg_name 'chunk-$RepresetationID$-$Number%05d$.m4s' -adaptation_sets "id=0,streams=v id=1,stream=a" ~/dash-project/dash-output/video1/manifest.mpd
ffmpeg -y -i ~/dash-project/videos-trascoded/video1_1500k.mp4 -i ~/dash-project/videos-trascoded/video1_2000k.mp4 -i ~/dash-project/videos-trascoded/video1_4000k.mp4  -map 0:v -map 1:v -map 2:v -map 0:a -c copy -f dash -seg_duration 4 -use_template 1 -use-timeline 1 -init_seg_name 'init-$RepresentationID$.m4s' -media_seg_name 'chunk-$RepresetationID$-$Number%05d$.m4s' -adaptation_sets "id=0,streams=v id=1,stream=a" ~/dash-project/dash-output/video1/manifest.mpd
ffmpeg -y -i ~/dash-project/videos-trascoded/video1_1500k.mp4 -i ~/dash-project/videos-trascoded/video1_2000k.mp4 -i ~/dash-project/videos-trascoded/video1_4000k.mp4  -map 0:v -map 1:v -map 2:v -map 0:a -c copy -f dash -seg_duration 4 -use_template 1 -use_timeline 1 -init_seg_name 'init-$RepresentationID$.m4s' -media_seg_name 'chunk-$RepresetationID$-$Number%05d$.m4s' -adaptation_sets "id=0,streams=v id=1,stream=a" ~/dash-project/dash-output/video1/manifest.mpd
ls -l ~/dash-project
ls -l ~/dash-project/videos-trascoded
ffmpeg -y -i ~/dash-project/videos-trascoded/videos1_1500k.mp4 -i ~/dash-project/videos-trascoded/videos1_2000k.mp4 -i ~/dash-project/videos-trascoded/videos1_4000k.mp4  -map 0:v -map 1:v -map 2:v -map 0:a -c copy -f dash -seg_duration 4 -use_template 1 -use_timeline 1 -init_seg_name 'init-$RepresentationID$.m4s' -media_seg_name 'chunk-$RepresetationID$-$Number%05d$.m4s' -adaptation_sets "id=0,streams=v id=1,stream=a" ~/dash-project/dash-output/video1/manifest.mpd
ffmpeg -y -i ~/dash-project/videos-trascoded/videos1_1500k.mp4 -i ~/dash-project/videos-trascoded/videos1_2000k.mp4 -i ~/dash-project/videos-trascoded/videos1_4000k.mp4  -map 0:v:0 -map 1:v:0 -map 2:v:0 -map 0:a:0 -c:v copy -c:a copy -f dash -seg_duration 4 -use_template 1 -use_timeline 1 -init_seg_name 'init-$RepresentationID$.m4s' -media_seg_name 'chunk-$RepresetationID$-$Number%05d$.m4s' -adaptation_sets "id=0,streams=0,1,2 id=1,stream=3" ~/dash-project/dash-output/video1/manifest.mpd
ffmpeg -y -i ~/dash-project/videos-trascoded/videos1_1500k.mp4 -i ~/dash-project/videos-trascoded/videos1_2000k.mp4 -i ~/dash-project/videos-trascoded/videos1_4000k.mp4  -map 0:v:0 -map 1:v:0 -map 2:v:0 -map 0:a:0 -c:v copy -c:a copy -f dash -seg_duration 4 -use_template 1 -use_timeline 1 -init_seg_name 'init-$RepresentationID$.m4s' -media_seg_name 'chunk-$RepresetationID$-$Number%05d$.m4s' -adaptation_sets "id=0,streams=0,1,2" ~/dash-project/dash-output/video1/manifest.mpd
ffmpeg -y -i ~/dash-project/videos-trascoded/videos1_1500k.mp4 -i ~/dash-project/videos-trascoded/videos1_2000k.mp4 -i ~/dash-project/videos-trascoded/videos1_4000k.mp4  -map 0:v:0 -map 1:v:0 -map 2:v:0 -c:v copy -f dash -seg_duration 4 -use_template 1 -use_timeline 1 -init_seg_name 'init-$RepresentationID$.m4s' -media_seg_name 'chunk-$RepresetationID$-$Number%05d$.m4s' -adaptation_sets "id=0,streams=0,1,2" ~/dash-project/dash-output/video1/manifest.mpd
ffmpeg -y -i ~/dash-project/videos-trascoded/videos1_1500k.mp4 -i ~/dash-project/videos-trascoded/videos1_2000k.mp4 -i ~/dash-project/videos-trascoded/videos1_4000k.mp4  -map 0:v:0 -map 1:v:0 -map 2:v:0 -c:v copy -f dash -seg_duration 4 -use_template 1 -use_timeline 1 -adaptation_sets "id=0,streams=0,1,2" ~/dash-project/dash-output/video1/manifest.mpd
ffmpeg -y -i ~/dash-project/videos-trascoded/videos1_1500k.mp4 -i ~/dash-project/videos-trascoded/videos1_2000k.mp4 -i ~/dash-project/videos-trascoded/videos1_4000k.mp4  -map 0:v:0 -map 1:v:0 -map 2:v:0 -map 0:a:0 -c:v copy -c:a copy -f dash -seg_duration 4 -use_template 1 -use_timeline 1 -adaptation_sets "id=0,streams=0,1,2" ~/dash-project/dash-output/video1/manifest.mpd
ffmpeg -y -i ~/dash-project/videos-trascoded/videos1_1500k.mp4 -i ~/dash-project/videos-trascoded/videos1_2000k.mp4 -i ~/dash-project/videos-trascoded/videos1_4000k.mp4  -map 0:v:0 -map 1:v:0 -map 2:v:0 -map 0:a:0 -c:v copy -c:a copy -f dash -seg_duration 4 -use_template 1 -use_timeline 1 -adaptation_sets "id=0,streams=0,1,2 id=1,stream=3" ~/dash-project/dash-output/video1/manifest.mpd
ffmpeg -y -i ~/dash-project/videos-trascoded/videos1_1500k.mp4 -i ~/dash-project/videos-trascoded/videos1_2000k.mp4 -i ~/dash-project/videos-trascoded/videos1_4000k.mp4 -i ~/dash-project/videos-trasccoded/videos1_audio.m4a -map 0:v:0 -map 1:v:0 -map 2:v:0 -map 3:a:0 -c:v copy -c:a aac -b:a 128k -f dash -seg_duration 4 -use_template 1 -use_timeline 1 -adaptation_sets "id=0,streams=0,1,2 id=1,stream=3" ~/dash-project/dash-output/video1/manifest.mpd
ffmpeg -y -i ~/dash-project/videos-trascoded/videos1_1500k.mp4 -i ~/dash-project/videos-trascoded/videos1_2000k.mp4 -i ~/dash-project/videos-trascoded/videos1_4000k.mp4 -i ~/dash-project/videos-trascoded/videos1_audio.m4a -map 0:v:0 -map 1:v:0 -map 2:v:0 -map 3:a:0 -c:v copy -c:a aac -b:a 128k -f dash -seg_duration 4 -use_template 1 -use_timeline 1 -adaptation_sets "id=0,streams=0,1,2 id=1,stream=3" ~/dash-project/dash-output/video1/manifest.mpd
ffmpeg -y -i ~/dash-project/videos-original/videos1_hd.mp4 -vn -cc:a acc -b:a 128k ~/dash-project/videos-trascoded/videos1_audio.m4a
ffmpeg -y -i ~/dash-project/videos-original/videos1_hd.mp4 -vn -c:a acc -b:a 128k ~/dash-project/videos-trascoded/videos1_audio.m4a
ffmpeg -y -i ~/dash-project/videos-original/videos1_hd.mp4 -vn -c:a aac -b:a 128k ~/dash-project/videos-trascoded/videos1_audio.m4a
ffmpeg -y -i ~/dash-project/videos-trascoded/videos1_1500k.mp4 -i ~/dash-project/videos-trascoded/videos1_2000k.mp4 -i ~/dash-project/videos-trascoded/videos1_4000k.mp4 -i ~/dash-project/videos-trascoded/videos1_audio.m4a -map 0:v:0 -map 1:v:0 -map 2:v:0 -map 3:a:0 -c:v copy -c:a aac -b:a 128k -f dash -seg_duration 4 -use_template 1 -use_timeline 1 -adaptation_sets "id=0,streams=0,1,2 id=1,stream=3" ~/dash-project/dash-output/video1/manifest.mpd
ffmpeg -y -i ~/dash-project/videos-trascoded/videos1_1500k.mp4 -i ~/dash-project/videos-trascoded/videos1_2000k.mp4 -i ~/dash-project/videos-trascoded/videos1_4000k.mp4  -map 0:v:0 -map 1:v:0 -map 2:v:0 -map 0:a:0 -c:v copy -c:a copy -f dash -seg_duration 4 -use_template 1 -use_timeline 1 -adaptation_sets "id=0,streams=0,1,2 id=1,stream=3" ~/dash-project/dash-output/video1/manifest.mpd
ffmpeg -y -i ~/dash-project/videos-trascoded/videos1_1500k.mp4 -i ~/dash-project/videos-trascoded/videos1_2000k.mp4 -i ~/dash-project/videos-trascoded/videos1_4000k.mp4  -map 0:v:0 -map 1:v:0 -map 2:v:0 -c:v copy -f dash -seg_duration 4 -use_template 1 -use_timeline 1 -adaptation_sets "id=0,streams=0,1,2" ~/dash-project/dash-output/video1/manifest.mpd
ffmpeg -y -i ~/dash-project/videos-trascoded/videos1_1500k.mp4 -i ~/dash-project/videos-trascoded/videos1_2000k.mp4 -i ~/dash-project/videos-trascoded/videos1_4000k.mp4  -map 0:v:0 -map 1:v:0 -map 2:v:0 -map 0:a:0 -c:v copy -c:a copy -f dash -seg_duration 4 -use_template 1 -use_timeline 1 -adaptation_sets "id=0,streams=0,1,2 id=1,stream=3" ~/dash-project/dash-output/video1/manifest.mpd
ffmpeg -y -i ~/dash-project/videos-trascoded/videos1_1500k.mp4 -i ~/dash-project/videos-trascoded/videos1_2000k.mp4 -i ~/dash-project/videos-trascoded/videos1_4000k.mp4  -map 0:v:0 -map 1:v:0 -map 2:v:0 -c:v copy -f dash -seg_duration 4 -use_template 1 -use_timeline 1 -adaptation_sets "id=0,streams=0,1,2" ~/dash-project/dash-output/video1/manifest.mpd
ffmpeg -y -i ~/dash-project/videos-original/videos1_hd.mp4 -vn -c:a aac -b:a 128k ~/dash-project/videos-trascoded/videos1_audio.m4a
ffmpeg -y -i ~/dash-project/videos-trascoded/videos1_1500k.mp4 -i ~/dash-project/videos-trascoded/videos1_2000k.mp4 -i ~/dash-project/videos-trascoded/videos1_4000k.mp4 -i ~/dash-project/videos-trascoded/videos1_audio.m4a -map 0:v:0 -map 1:v:0 -map 2:v:0 -map 3:a:0 \ -c:v copy \ -c:a copy \ -f dash -seg_duration 4 -use_template 1 -use_timeline 1 -adaptation_sets "id=0,streams=0,1,2 id=1,stream=3" ~/dash-project/dash-output/video1/manifest.mpd
ffmpeg -y -i ~/dash-project/videos-trascoded/videos1_1500k.mp4 -i ~/dash-project/videos-trascoded/videos1_2000k.mp4 -i ~/dash-project/videos-trascoded/videos1_4000k.mp4 -i ~/dash-project/videos-trascoded/videos1_audio.m4a -map 0:v:0 -map 1:v:0 -map 2:v:0 -map 3:a:0 -c:v copy -c:a copy -f dash -seg_duration 4 -use_template 1 -use_timeline 1 -adaptation_sets "id=0,streams=0,1,2 id=1,stream=3" ~/dash-project/dash-output/video1/manifest.mpd
ffmpeg -y -i ~/dash-project/videos-trascoded/videos1_1500k.mp4 -i ~/dash-project/videos-trascoded/videos1_2000k.mp4 -i ~/dash-project/videos-trascoded/videos1_4000k.mp4  -map 0:v:0 -map 1:v:0 -map 2:v:0 -c:v copy -f dash -seg_duration 4 -use_template 1 -use_timeline 1 -adaptation_sets "id=0,streams=0,1,2" ~/dash-project/dash-output/video1/manifest.mpd
ffmpeg -y -i ~/dash-project/videos-trascoded/videos2_1500k.mp4 -i ~/dash-project/videos-trascoded/videos2_2000k.mp4 -i ~/dash-project/videos-trascoded/videos2_4000k.mp4  -map 0:v:0 -map 1:v:0 -map 2:v:0 -c:v copy -f dash -seg_duration 4 -use_template 1 -use_timeline 1 -adaptation_sets "id=0,streams=0,1,2" ~/dash-project/dash-output/video2/manifest.mpd
ls -lh ~/dash-project/dash-output/video1
ls -lh ~/dash-project/dash-output/video2
sudo apt update
sudo apt install -y apache2
sudo systemctl enable apache2
sudo systemctl start apache2
sudo systemctl status apache2
ip a
curl http://localhost
sudo mkdir -p /var/www/html/dash/video1
sudo mkdir -p /var/www/html/dash/video2
sudo cp -r ~/dash-project/dash-output/video1* /var/www/html/dash/video1/
sudo cp -r ~/dash-project/dash-output/video2* /var/www/html/dash/video2/
ls -lh /var/www/html/dash/video1
ls -lh /var/www/html/dash/video2
sudo chown -R www-data:www-data /var/www/html/dash
sudo chmod -R 755 /var/www/html/dash
curl -I http://localhost/dash/video1/manifest.mpd
ls -lh ~/dash-project/dash-output/video1
ls -R ~/dash-project/dash-output/video1
ls -lh /var/www/html/dash/video1
ls -lh /var/www/html/dash/video1/video1
curl -I http://localhost/dash/video1/video1/manifest.mpd
curl -I http://localhost/dash/video2/video2/manifest.mpd
ls -lh /var/www/html/dash/video2/video2
ip a
curl -I http://localhost/dash/video2/video2/manifest.mpd
curl -I http://192.168.224.255/dash/video2/video2/manifest.mpd
curl -I http://192.168.224.130/dash/video2/video2/manifest.mpd
