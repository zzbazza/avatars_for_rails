module AvatarsHelper
  def avatar(object, size = nil)
    render partial: 'avatars/current',
           object:  object,
           as:      :avatarable,
           locals:  { size: size }
  end
end
