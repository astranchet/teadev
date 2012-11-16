require 'liquid'
require 'digest/md5'

module GravatarFilter

  def gravatar(email)
  	hash = Digest::MD5.hexdigest(email)
	return "http://www.gravatar.com/avatar/#{hash}"
  end

end

Liquid::Template.register_filter(GravatarFilter)
