//= require jquery.Jcrop
//= require jquery-fileupload/basic

var AvatarForRails,
    bind = function (fn, me) {
      return function () {
        return fn.apply(me, arguments);
      };
    };

AvatarForRails = (function () {
  function AvatarForRails(image) {
    initCrop(image)
  }

  var initCrop = function (image) {
    var img, ar;

    img = $(image);
    ar = parseInt(img.attr('data-aspect_ratio'), 10);

    img.width('100%');

    img.Jcrop({
      bgColor: 'clear',
      bgOpacity: 0.6,
      setSelect: [0, 0, 100, 100],
      aspectRatio: ar,
      onSelect: function (coords) {
        updateCrop(img, coords);
      },
      onChange: function (coords) {
        updateCrop(img, coords);
      }
    }, function () {//fix. prevent submit form
      $(".jcrop-box").attr('type', 'button');
    });
  };

  var updateCrop = function (img, coords) {
    $(".jcrop-box").attr('type', 'button');

    var iW = img.width();
    var iH = img.height();

    if ((coords.w === 0) || (coords.h === 0)) {
      coords.x = 0;
      coords.y = 0;
    }

    $('input[name*="avatar_crop_x"]').val(coords.x / iW);
    $('input[name*="avatar_crop_y"]').val(coords.y / iH);
    $('input[name*="avatar_crop_w"]').val(coords.w / iW);
  };

  return AvatarForRails;
})();