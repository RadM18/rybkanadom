</div>
</div>
<script type="text/javascript" src="catalog/view/theme/fastfood/js/common.js"></script>
<script type="text/javascript" src="catalog/view/theme/fastfood/js/jquery.maskedinput.min.js"></script>
<link rel="stylesheet" type="text/css" property="stylesheet" href="catalog/view/theme/fastfood/stylesheet/quick_view.css" />
</div>
<div id="footer">
<div class="container">
<div class="menu_phone">
<div class="menu">
<?php if (isset($footerlinks)) { ?>
<?php foreach ($footerlinks as $footerlink) { ?>
	<a href="<?php echo $footerlink['link']; ?>" title=" "><?php echo $footerlink['title']; ?></a>
<?php } ?>
<?php } ?>
</div>
<div class="phone"><i class="fa fa-phone"></i><?php echo $phone; ?></div>
</div>
<div class="copyright">
<?php
  $path = "common/home";
  $url = $_SERVER['REQUEST_URI'];
  if ($url == "/" or strripos($url, $path)) {
    $is_home = TRUE;
  }else{
    $is_home = false;
  }           
?>
<? if($is_home) { ?>
<div class="studio-link">Создание и продвижение <br> сайта – <a href="https://xpert-studio.ru/" target="_blank">xpert-studio.ru</a></div>
<? } ?>
<div class="social">
<?php if (isset($socials)) { ?>
<?php foreach ($socials as $social) { ?>
	<a href="<?php echo $social['link']; ?>" target="_blank" title="" ><i class="fa <?php echo $social['icon']; ?>"></i></a>
<?php } ?>
<?php } ?>
</div>
<div class="address">Ногинск, Адреса магазинов <i class="fa fa-angle-up" aria-hidden="true"></i><br /><?php if(isset($store_hours)) { echo $store_hours; } ?>
<div class="popup-adr">
    <div class="popup-adr-item">
        <i class="fa fa-map-marker" aria-hidden="true"></i> Ногинск, ТД Ногинский, ул. Комсомольская д. 26
    </div>
    <div class="popup-adr-item">
        <i class="fa fa-map-marker" aria-hidden="true"></i> Электросталь, ул. Карла Маркса д. 26
    </div>
    <div class="popup-adr-item">
        <i class="fa fa-map-marker" aria-hidden="true"></i> Электросталь, ул. Проспект Ленина д. 18
    </div>
    <script>
        jQuery('.address .fa-angle-up').click(function(){
            jQuery('.popup-adr').toggle('fast');
        });
    </script>
</div>
</div>
<div class="payment">
<?php if(isset($social_visa)) { ?><i class="fa fa-cc-visa"></i><?php } ?>
<?php if(isset($social_master)) { ?><i class="fa fa-cc-mastercard"></i><?php } ?>
</div>
</div>
</div>
<input type="hidden" name="fixheader" value="<?php if($fixheader) {echo '1';} else {echo '0';} ?>" />
<input type="hidden" name="quickview" value="<?php if($show_quickview) {echo '1';} else {echo '0';} ?>" />
<script type="text/javascript">
function price_format(n) { 
    c = <?php echo (empty($currency['decimals']) ? "0" : $currency['decimals'] ); ?>;
    d = '<?php echo $currency['decimal_point']; ?>';
    t = '<?php echo $currency['thousand_point']; ?>';
    s_left = '<?php echo $currency['symbol_left']; ?>';
    s_right = '<?php echo $currency['symbol_right']; ?>';
    i = parseInt(n = Math.abs(n).toFixed(c)) + ''; 
    j = ((j = i.length) > 3) ? j % 3 : 0; 
    return s_left + (j ? i.substr(0, j) + t : '') + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + t) + (c ? d + Math.abs(n - i).toFixed(c).slice(2) : '') + s_right; 
}
function weight_format(n, unit) { 
    c = <?php echo (empty($currency['decimals']) ? "0" : $currency['decimals'] ); ?>;
    d = '<?php echo $currency['decimal_point']; ?>';
    t = '<?php echo $currency['thousand_point']; ?>';
    i = parseInt(n = Math.abs(n).toFixed(c)) + ''; 
    j = ((j = i.length) > 3) ? j % 3 : 0; 
    return (j ? i.substr(0, j) + t : '') + i.substr(j).replace(/(\d{3})(?=\d)/g, "$1" + t) + (c ? d + Math.abs(n - i).toFixed(c).slice(2) : '') + unit; 
}
</script>
<?php echo $google_analytics; ?>
</div>
<!-- RedConnect --> 
<script id="rhlpscrtg" type="text/javascript" charset="utf-8" async="async" 
src="https://web.redhelper.ru/service/main.js?c=rybkanadom"></script> 
<div style="display: none"><a class="rc-copyright" 
href="http://redconnect.ru">Сервис звонка с сайта RedConnect</a></div> 
<!--/RedConnect -->
<!-- Yandex.Metrika counter -->
<script type="text/javascript" >
    (function (d, w, c) {
        (w[c] = w[c] || []).push(function() {
            try {
                w.yaCounter45599493 = new Ya.Metrika({
                    id:45599493,
                    clickmap:true,
                    trackLinks:true,
                    accurateTrackBounce:true,
                    webvisor:true
                });
            } catch(e) { }
        });

        var n = d.getElementsByTagName("script")[0],
            s = d.createElement("script"),
            f = function () { n.parentNode.insertBefore(s, n); };
        s.type = "text/javascript";
        s.async = true;
        s.src = "https://mc.yandex.ru/metrika/watch.js";

        if (w.opera == "[object Opera]") {
            d.addEventListener("DOMContentLoaded", f, false);
        } else { f(); }
    })(document, window, "yandex_metrika_callbacks");
</script>
<noscript><div><img src="https://mc.yandex.ru/watch/45599493" style="position:absolute; left:-9999px;" alt="" /></div></noscript>
<!-- /Yandex.Metrika counter -->
<script>
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','https://www.google-analytics.com/analytics.js','ga');

  ga('create', 'UA-104491380-1', 'auto');
  ga('send', 'pageview');

</script>
<!-- Rating@Mail.ru counter -->
<script type="text/javascript">
var _tmr = window._tmr || (window._tmr = []);
_tmr.push({id: "2921814", type: "pageView", start: (new Date()).getTime()});
(function (d, w, id) {
  if (d.getElementById(id)) return;
  var ts = d.createElement("script"); ts.type = "text/javascript"; ts.async = true; ts.id = id;
  ts.src = (d.location.protocol == "https:" ? "https:" : "http:") + "//top-fwz1.mail.ru/js/code.js";
  var f = function () {var s = d.getElementsByTagName("script")[0]; s.parentNode.insertBefore(ts, s);};
  if (w.opera == "[object Opera]") { d.addEventListener("DOMContentLoaded", f, false); } else { f(); }
})(document, window, "topmailru-code");
</script><noscript><div>
<img src="//top-fwz1.mail.ru/counter?id=2921814;js=na" style="border:0;position:absolute;left:-9999px;" alt="" />
</div></noscript>
<!-- //Rating@Mail.ru counter -->
</body></html>