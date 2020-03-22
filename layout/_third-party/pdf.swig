{% if theme.pdf.enable %}
<script>
// 加入重试机制
if ($('body').find('div.pdf').length) {
  let retry = 3
  const reqFile = function (onFail) {
    if (retry === 0) return
    retry --
    $.ajax({
      type: 'GET',
      url: '{{ theme.pdf.pdfobject.cdn }}',
      dataType: 'script',
      cache: true,
      success: function() {
        $('body').find('div.pdf').each(function(i, o) {
          PDFObject.embed($(o).attr('target'), $(o), {
            pdfOpenParams: {
              navpanes: 0,
              toolbar: 0,
              statusbar: 0,
              pagemode: 'thumbs',
              view: 'FitH'
            },
            PDFJS_URL: '/lib/pdf/web/viewer.html',
            height: $(o).attr('height') || '{{ theme.pdf.height }}'
          });
        });
      },
      error: onFail
    });
  }
  reqFile(function() {
    setTimeout(reqFile, 100)
  })
}
</script>
{% endif %}
