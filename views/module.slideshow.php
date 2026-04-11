<?php
/* First Slideshow */
$reslide = '';
$Records = Slideshow::getSlideshow_by();

if ($Records) {
    // We use the first record for this specific hero/video section
    $RecRow = $Records[0];

    if ($RecRow->mode == 2) { // Video mode
        if ($RecRow->type == 0 && !empty($RecRow->source_vid)) { // Uploaded Video
            $video_path = IMAGE_PATH . 'slideshow/video/' . $RecRow->source_vid;
            $reslide = '
            <div class="video-section" style="width: 100%; height: auto; margin: 0;">
                <div id="hotel-video-container" style="width: 100%; aspect-ratio: 16/9; background: #000;">
                    <video width="100%" height="100%" autoplay loop muted style="object-fit: cover;">
                        <source src="' . $video_path . '" type="video/mp4">
                        Your browser does not support the video tag.
                    </video>
                </div>
            </div>';
        } else if ($RecRow->type == 1 && !empty($RecRow->source)) { // YouTube Link
            // Extract YouTube ID
            $youtubeId = '';
            if (preg_match('%(?:youtube(?:-nocookie)?\.com/(?:[^/]+/.+/|(?:v|e(?:mbed)?)/|.*[?&]v=)|youtu\.be/)([^"&?/ ]{11})%i', $RecRow->source, $match)) {
                $youtubeId = $match[1];
            }

            if (!empty($youtubeId)) {
                $reslide = '
                <div class="video-section" style="width: 100%; height: auto; margin: 0;">
                    <div id="hotel-video-container" style="width: 100%; aspect-ratio: 16/9; background: #000;"></div>
                    <script>
                        (function () {
                            var container = document.getElementById(\'hotel-video-container\');
                            if (container) {
                                var ifr = document.createElement(\'iframe\');
                                ifr.src = "https://www.youtube.com/embed/' . $youtubeId . '?autoplay=1&mute=1&rel=0&loop=1&playlist=' . $youtubeId . '";
                                ifr.style.width = "100%";
                                ifr.style.height = "100%";
                                ifr.style.border = "none";
                                ifr.setAttribute("allowfullscreen", "");
                                ifr.setAttribute("allow", "accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture");
                                container.appendChild(ifr);
                            }
                        })();
                    </script>
                </div>';
            }
        }
    } else { // Image mode
        $file_path = SITE_ROOT . 'images/slideshow/' . $RecRow->image;
        if (file_exists($file_path) && !empty($RecRow->image)) {
            $reslide = '
            <div class="header-video">
                <div id="hero_video">
                    <img src="' . IMAGE_PATH . 'slideshow/' . $RecRow->image . '" width="100%" height="auto" alt="' . $RecRow->title . '" style="object-fit: cover; min-height: 100vh;">
                    <div class="opacity-mask" data-opacity-mask="rgba(0, 0, 0, 0.6)">
                        <div class="container">
                            <div class="intro_title wow fadeInUp">
                                <h3 class="">' . $RecRow->content . '</h3>
                            </div>
                        </div>
                    </div>
                </div>
            </div>';
        }
    }
}

$jVars["module:slideshow"] = $reslide;
?>