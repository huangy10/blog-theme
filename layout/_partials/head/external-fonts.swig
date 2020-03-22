{% if theme.font.enable %}

  {% set font_config = theme.font %}
  {% set font_families = '' %}
  {% set font_styles = ':300,300italic,400,400italic,700,700italic' %}
  {% set font_found = false %}

  {% if font_config.global.family and font_config.global.external %}
    {% set font_families += font_config.global.family + font_styles %}
    {% set font_found = true %}
  {% endif %}

  {% if font_config.headings.family and font_config.headings.external %}
    {% if font_found %}
      {% set font_families += '|' %}
    {% endif %}

    {% set font_families += font_config.headings.family + font_styles %}
  {% endif %}

  {% if font_config.posts.family and font_config.posts.external %}
    {% if font_found %}
      {% set font_families += '|' %}
    {% endif %}

    {% set font_families += font_config.posts.family + font_styles %}
  {% endif %}

  {% if font_config.logo.family and font_config.logo.external %}
    {% if font_found %}
      {% set font_families += '|' %}
    {% endif %}

    {% set font_families += font_config.logo.family + font_styles %}
  {% endif %}

  {% if font_config.codes.family and font_config.codes.external %}
    {% if font_found %}
      {% set font_families += '|' %}
    {% endif %}

    {% set font_families += font_config.codes.family + font_styles %}
  {% endif %}

  {% if font_families !== '' %}
    {% set font_families += '&subset=latin,latin-ext' %}
    {% set font_host = font_config.host | default('//fonts.googleapis.com') %}
    <link rel="stylesheet" href="{{ font_host }}/css?family={{ font_families }}"/>
  {% endif %}

{% endif %}

{% if theme.font.adobe %}
<script>
  (function(d) {
    var config = {
      kitId: 'qpn4asg',
      scriptTimeout: 3000,
      async: true
    },
    h=d.documentElement,t=setTimeout(function(){h.className=h.className.replace(/\bwf-loading\b/g,"")+" wf-inactive";},config.scriptTimeout),tk=d.createElement("script"),f=false,s=d.getElementsByTagName("script")[0],a;h.className+=" wf-loading";tk.src='https://use.typekit.net/'+config.kitId+'.js';tk.async=true;tk.onload=tk.onreadystatechange=function(){a=this.readyState;if(f||a&&a!="complete"&&a!="loaded")return;f=true;clearTimeout(t);try{Typekit.load(config)}catch(e){}};s.parentNode.insertBefore(tk,s)
  })(document);
</script>
{% endif %}