class Tiny < ActiveRecord::Base
  attr_accessible :tiny, :url

  before_create :random_string

def random_string(length=5)
    chars = (Digest::MD5.hexdigest "#{DateTime.now.to_s}")
    code = ''
    length.times { code << chars[rand(chars.size)] }
    self.tiny=code.upcase
  end

end
