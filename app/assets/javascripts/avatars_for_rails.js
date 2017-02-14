//= require jquery.Jcrop
//= require jquery-fileupload/basic

var AvatarForRails,
    bind = function (fn, me) {
      return function () {
        return fn.apply(me, arguments);
      };
    };

AvatarForRails = (function () {
  function AvatarForRails() {
    $('input[name*="logo"]').fileupload({
      dataType: 'json',
      uploadTemplateId: null,
      downloadTemplateId: null,
      maxNumberOfFiles: 1,
      autoUpload: true,
      done: uploadDone,
      stop: null
    });
  }

  var uploadDone = function (e, data) {
    if (data.result.redirect_path) {
      // window.location = data.result.redirect_path;
    } else if (data.result.crop) {
      initCrop(data.result.crop);
    } else {
      // Flashy.message('error', data.result.errors);
    }
  };

  var initCrop = function (data) {

    var div = $('.avatar-update'), img, ar;
    div.html(data);

    img = div.find('img.avatar-crop');
    ar = parseInt(img.attr('data-aspect_ratio'), 10);

    img.width('100%');

    img.Jcrop({
      bgColor: 'clear',
      bgOpacity: 0.6,
      setSelect: [0, 0, 200, 200 / ar],
      aspectRatio: ar,
      onSelect: updateCrop,
      onChange: updateCrop
    });
  };

  var updateCrop = function (coords) {
    var img = $('img.avatar-crop');
    var iW = img.width();
    var iH = img.height();

    if ((coords.w === 0) || (coords.h === 0)) {
      coords.x = 0;
      coords.y = 0;
    }

    $('input[name*="logo_crop_x"]').val(coords.x / iW);
    $('input[name*="logo_crop_y"]').val(coords.y / iH);
    $('input[name*="logo_crop_w"]').val(coords.w / iW);
  };

  return AvatarForRails;

})();