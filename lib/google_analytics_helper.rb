module GoogleAnalyticsHelper
  def ga_generate_js(ua)
    return false if ua.nil?
    return "
var _gaq = _gaq || [];
_gaq.push(['_setAccount', '#{ua}']);
_gaq.push(['_trackPageview']);

(function() {
  var ga = document.createElement('script');
  ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 
      'http://www') + '.google-analytics.com/ga.js';
  ga.setAttribute('async', 'true');
  document.documentElement.firstChild.appendChild(ga);
})();"
  end
end
