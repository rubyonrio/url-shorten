class Shorten < ActiveRecord::Base  
  validates_presence_of :address
  
  def make_short
    @short = Base58.encode(id)
  end
end
