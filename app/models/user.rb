class User < ActiveRecord::Base
	 
  # has_secure_password

   # Assign an API key on create
  before_create do |user|
    user.api_key = user.generate_api_key
  end

  # Generate a unique API key
  def generate_api_key
    loop do
      token = SecureRandom.base64.tr('+/=', 'Qrt')
      break token unless User.exists?(api_key: token)
    end
  end
  
  # def self.find_or_stub_by(hash={})
  #   User.find_by(email: hash[:email]) || User.stub(hash)
  # end

  # def self.stub(hash={})
  #   if hash[:email]
  #   end
  # end

end
