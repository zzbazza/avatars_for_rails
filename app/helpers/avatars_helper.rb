module AvatarsHelper
  def avatar(object, options = {})
    image_tag object.avatar.url(options[:size]), id: options[:id] || 'avatar-crop', class: 'avatar'
  end
end
