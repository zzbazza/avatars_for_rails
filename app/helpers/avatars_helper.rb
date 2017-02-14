module AvatarsHelper
  def avatar(object, options = {})
    render partial: 'avatars/current.html.erb',
           object:  object,
           as:      :avatarable,
           locals:  { options: options }
  end
end
