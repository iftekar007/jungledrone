<?php

echo 1;

$fileToFlv = '1426232374.flv';
$fileFlv = 'convertedvdo.mp4';
$Flvjpg = 'cover.jpg';


$command = "/usr/bin/ffmpeg" . ' -i ' . $fileToFlv . ' -vstats 2>&1';
$output = shell_exec ( $command );

$result = ereg ( '[0-9]?[0-9][0-9][0-9]x[0-9][0-9][0-9][0-9]?', $output, $regs );

$vals = (explode ( 'x', $regs [0] ));
$width = $vals [0] ? $vals [0] : null;
$height = $vals [1] ? $vals [1] : null;
$info = array ('width' => $width, 'height' => $height );

//$s_vid_conv_cmd = "/usr/bin/ffmpeg -i ".$fileToFlv." -ar 22050 -f mp4 ".$fileFlv;
$s_vid_conv_cmd = "/usr/bin/ffmpeg -i ".$fileToFlv." -b 1500k -vcodec libx264 -vpre slow -vpre baseline -g 30 -s 640x360 ".$fileFlv;

$x=exec($s_vid_conv_cmd);

exec("/usr/bin/ffmpeg -i ".$fileToFlv." -vframes 1 -ss 00:00:10 -s 320x180 -f image2 ".$Flvjpg);