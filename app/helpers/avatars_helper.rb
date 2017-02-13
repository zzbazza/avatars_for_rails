module AvatarsHelper
  def avatar(object, size)
    render partial: 'avatars/current',
           object:  object,
           as:      :avatarable,
           locals:  { size: size ? size : :medium }
  end
end