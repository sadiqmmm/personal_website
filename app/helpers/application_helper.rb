module ApplicationHelper

  def spotify_player(song_url)
    "<iframe src='https://embed.spotify.com/?uri=#{song_url}' width='270' height='380' frameborder='0' allowtransparency='true'></iframe>".html_safe
  end
  
end
