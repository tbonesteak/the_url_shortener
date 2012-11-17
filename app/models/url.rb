class Url < ActiveRecord::Base
  attr_accessible :long_url, :short_code

  validates :long_url, presence: true, format: { with: URI::regexp} 
 
  before_create :short_code_generator
  

  def short_code_generator
    logger.info { "BEFORE SHORT CODE GENERATOR:"}
    logger.info { self.short_code }

    self.short_code = (0...9).map{ ('a'..'z').to_a[rand(26)] }.join

    logger.info { "AFTER SHORT CODE GENERATOR:"}
    logger.info { self.short_code }
  end
end


# class Foo
#   attr_accessor :bar

#   def print_bar
#     self.bar
#   end

#   def assign_bar
#     self.bar = 'baz'
#   end

# end