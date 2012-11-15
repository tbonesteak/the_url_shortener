class Url < ActiveRecord::Base
  attr_accessible :long_url, :short_code

  validates :long_url, presence: true, format: { with: URI::regexp} 
 

end
