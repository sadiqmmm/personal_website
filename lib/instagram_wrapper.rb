class InstagramWrapper
  include HTTParty

  # Returns an array of arrays
  # The deeper arrays have the following format: ["picture_url", "link_url"]

  def self.user_recent_media
    instagram_pics = HTTParty.get("https://api.instagram.com/v1/users/262900063/media/recent/?access_token=#{ENV["INSTAGRAM_AUTH_TOKEN"]}&count=9")

    pictures_information = Array.new
    instagram_pics["data"].each do |picture|
      info = Array.new
      info[0] = picture["images"]["thumbnail"]["url"]
      info[1] = picture["link"]
      pictures_information.push(info)
      # info.delete_at[0]
      # info.delete_at[1]
    end
    pictures_information
  end

end