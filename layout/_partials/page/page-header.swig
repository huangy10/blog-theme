<header class="post-header">

<{% if theme.seo %}h2{% else %}h1{% endif %} class="post-title" itemprop="name headline">
  {{- page.title -}}
  {% include '../post-edit.swig' %}
</{% if theme.seo %}h2{% else %}h1{% endif %}>

<div class="post-meta">
  {% if page.description %}
    <div class="post-description">{{ page.description }}</div>
  {% endif %}
  {% include 'breadcrumb.swig' %}

  <div>
    {% if not is_index and theme.busuanzi_count.enable and theme.busuanzi_count.post_views %}
      <span class="post-meta-divider">|</span>
      <span class="post-meta-item-icon"
      {% if not theme.post_meta.item_text %} title="{{ __('post.views') }}" {% endif %}>
      <i class="fa fa-{{ theme.busuanzi_count.post_views_icon }}"></i>
      {% if theme.post_meta.item_text %} {{ __('post.views') + __('symbol.colon') }} {% endif %}
      <span class="busuanzi-value" id="busuanzi_value_page_pv"></span>
      </span>
    {% endif %}
  </div>
</div>

</header>
