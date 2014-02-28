require 'digest/md5'

module ApplicationHelper
  #returns the URL for our pretty mug shot on gravatar
  def gravatar_url(email, options = {})
    digest = Digest::MD5.hexdigest(email)
    url_options = {host: "www.gravatar.com/avatar/#{digest}", d: "retro"}.merge(options)
    url = url_for(url_options)
    url
  end
end
