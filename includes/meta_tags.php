<?php
// SEO Meta Tags And Meta Description

function className_metatags()
{
    $current_url = pathinfo($_SERVER["PHP_SELF"]);
    $fileName = $current_url['filename'];

    if ($fileName == 'inner'):
        $className = 'Article';
        return $className;
        exit;
    endif;

    if ($fileName == 'subpkgdetail'):
        $className = 'Subpackage';
        return $className;
        exit;
    endif;

    if ($fileName != 'index'):
        $className = ucfirst(strtolower($fileName));
        return $className;
        exit;
    endif;

    return '';
}

function MetaTagsFor_SEO()
{

    $c_url      = pathinfo($_SERVER["PHP_SELF"]);
    $chk        = $c_url['filename'];
    $config     = Config::find_by_id(1);
    $sitetitle  = (!empty($config->meta_title) and $chk == 'index') ? $config->meta_title : $config->sitetitle;
    $keywords   = $config->site_keywords;
    $description = $config->site_description;

    $addtitle   = '';
    $class      = className_metatags();

    // Transaction start
    if (isset($_REQUEST['slug']) and !empty($_REQUEST['slug'])) {
        $cls = new $class;
        $rec = $cls->find_by_slug(addslashes($_REQUEST['slug']));
        if (!empty($rec)) {
            $addtitle       = !empty($rec->meta_title) ? $rec->meta_title : $rec->title;
            $keywords       = $rec->meta_keywords;
            $description    = $rec->meta_description;
        }
    }

    if (isset($_REQUEST['id']) and !empty($_REQUEST['id'])) {
        $cls = new $class;
        $rec = $cls->find_by_id($_REQUEST['id']);
        if ($rec) {
            $addtitle = $rec->title;
        }
    }

    $altclass   = !empty($class) ? $class : '';
    $addtitle   = !empty($addtitle) ? $addtitle : $altclass;
    $addsep     = !empty($addtitle) ? '-' : '';

    $sociallinks = SocialNetworking::getSocialNetwork();
    $sameas     = '';
    foreach ($sociallinks as $social) {
        if (end($sociallinks) === $social) {
            $sameas .= '"' . $social->linksrc . '"';
        } else {
            $sameas .= '"' . $social->linksrc . '",';
        }
    }

    $schema = '';
    $schema .= '<script type="application/ld+json">
	{
		"@context": "http://schema.org/",
		"@type": "Organization",
		"headline": "' . $config->sitetitle . '|' . $config->sitename . '",
		"keywords": "' . $config->site_keywords . '",
		"description": "' . $config->site_description . '",
		"url": "' . BASE_URL . '",
		"sameAs": [
					' . $sameas . '
					],
		"image": {
		  "@type": "ImageObject",
		  "height": "",
		  "width": "",
		  "url": "' . IMAGE_PATH . 'preference/' . $config->logo_upload . '"
		},
		"author": "' . $config->sitetitle . '",
		"publisher": {
		  "@type": "Organization",
		  "logo": {
			"@type": "ImageObject",
			"url": "' . IMAGE_PATH . 'preference/' . $config->logo_upload . '"
		  },
		  "name": "' . $config->sitetitle . '|' . $config->sitename . '"
	  }';
    if (!empty($config->schema_code)) {
        $schema .= ',' . $config->schema_code;
    }
    $schema .= '}</script>';

    $seoSources = '<title>' . $addtitle . $addsep . $sitetitle . '</title>' . "\n";
    $seoSources .= '<meta charset="utf-8">' . "\n";
    $seoSources .= '<meta http-equiv="X-UA-Compatible" content="IE=edge">' . "\n";
    $seoSources .= '<meta name="viewport" content="width=device-width, initial-scale=1">' . "\n";
    $seoSources .= '<meta name="robots" content="index,follow">' . "\n";
    $seoSources .= '<meta name="Googlebot" content="index, follow"/>' . "\n";
    $seoSources .= '<meta name="distribution" content="Global">' . "\n";
    $seoSources .= '<meta name="revisit-after" content="2 Days" />' . "\n";
    $seoSources .= '<meta name="classification" content="Hotel, Hotels in Nepal" />' . "\n";
    $seoSources .= '<meta name="category" content="Hotel, Hotels in Nepal" />' . "\n";
    $seoSources .= '<meta name="language" content="en-us" />' . "\n";
    $seoSources .= '<meta name="keywords" content="' . $keywords . '">' . "\n";
    $seoSources .= '<meta name="description" content="' . $description . '">' . "\n";
    $seoSources .= '<meta name="author" content="Longtail-e-media">' . "\n";
    $seoSources .= '<link rel="canonical" href="' . curPageURL() . '" />' . "\n";

    //Facebook and twitter sharing
    $seoSources .= '<meta property="og:title" content="' . $addtitle . $addsep . $sitetitle . '">' . "\n";
    $seoSources .= '<meta property="og:description" content="' . $description . '">' . "\n";

    /**
     * Generate Open Graph and Twitter image meta tags
     *
     * @param string $imagePath Full server path to image file
     * @param string $defaultImage Default image URL to use as fallback
     * @param string &$seoSources Reference to string where meta tags are appended
     */
    function getImageMetaTag($imagePath, $defaultImage, &$seoSources)
    {
        $imageUrl = null;

        // Check if image path exists and convert to URL
        if (!empty($imagePath) && file_exists($imagePath)) {
            $imageUrl = str_replace(SITE_ROOT . 'images/', IMAGE_PATH, $imagePath);
        }

        // Use actual image or fallback to default
        $finalImage = $imageUrl ?? $defaultImage;

        // Generate meta tags with XSS protection
        $seoSources .= '<meta property="og:image" content="' . htmlspecialchars($finalImage, ENT_QUOTES, 'UTF-8') . '">' . "\n";
        $seoSources .= '<meta property="twitter:image" content="' . htmlspecialchars($finalImage, ENT_QUOTES, 'UTF-8') . '">' . "\n";
    }

    /**
     * Get image path for a given content type
     *
     * @param object $record The database record
     * @param string $folder The image folder name
     * @return string|null Full server path to image or null
     */
    function getContentImagePath($record, $folder)
    {
        if (empty($record) || empty($record->fb_upload)) {
            return null;
        }

        return SITE_ROOT . 'images/' . $folder . '/social/' . $record->fb_upload;
    }

    if (!empty($_REQUEST['slug'])) {
        $slug = $_REQUEST['slug'];
        $defaultImage = IMAGE_PATH . 'preference/' . $config->fb_upload;
        $imagePath = null;

        switch ($class) {
            case 'Article':
                $blog = Article::find_by_slug($slug);
                $imagePath = getContentImagePath($blog, 'articles');
                break;

            case 'Package':
                $service = Package::find_by_slug($slug);
                $imagePath = getContentImagePath($service, 'package');
                break;

            case 'Subpackage':
                $offer = Subpackage::find_by_slug($slug);
                $imagePath = getContentImagePath($offer, 'subpackage');
                break;
        }
        // Generate meta tags (works for all cases including default)
        getImageMetaTag($imagePath, $defaultImage, $seoSources);
    } else {
        // No slug provided - use default image
        getImageMetaTag(null, IMAGE_PATH . 'preference/' . $config->fb_upload, $seoSources);
    }

    $tot = strlen(SITE_FOLDER) + 1;
    $data = substr($_SERVER['REQUEST_URI'], $tot);
    $seoSources .= '<meta property="og:url" content="' . BASE_URL . $data . '">' . "\n";
    $seoSources .= '<meta property="og:type" content="website">' . "\n";
    $seoSources .= '<meta property="twitter:card" content="summary_large_image">' . "\n\n";

    $seoSources .= '<base url="' . BASE_URL . '"/>' . "\n";
    $seoSources .= $schema . "\n";
    $seoSources .= $config->google_anlytics . "\n";

    return $seoSources;
}

?>