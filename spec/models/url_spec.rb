require 'spec_helper'

describe Url do

  it "should require a long_url" do
    url = Url.new
    expect { url.save! }.to raise_error
  end

  it "should have a valid URI for long_url" do
    url = Url.new(:long_url => "not_a_valid_URI" )
    expect { url.save! }.to raise_error
  end
  
end
