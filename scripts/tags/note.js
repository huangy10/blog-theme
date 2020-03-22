/**
 * note.js | https://theme-next.org/docs/tag-plugins/note
 */

/* global hexo */

'use strict';

function postNote(args, content) {
  // return hexo.render.render({text: content, engine: 'markdown'})
  //   .then(function (res) {
  //     return `<div class="note ${args.join(' ')}">
  //           ${res.split('\n').join('')}
  //         </div>`
  //   })
  return `<div class="note ${args.join(' ')}">
            ${hexo.render.renderSync({text: content, engine: 'markdown'}).split('\n').join('')}
          </div>`;
}

hexo.extend.tag.register('note', postNote, {ends: true, async: false});
hexo.extend.tag.register('subnote', postNote, {ends: true, async: false});
