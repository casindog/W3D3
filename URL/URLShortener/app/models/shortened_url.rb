class ShortenedUrl < ApplicationRecord
  attr_accessor :short_url
  validates :short_url, :long_url, :user_id, presence: true



  def self.random_code 
    self.short_url = SecureRandom::urlsafe_base64


  end

end