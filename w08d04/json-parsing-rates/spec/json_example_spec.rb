require 'spec_helper'

describe ParseJson do

  before(:each) do
    @file = ParseJson.new('json_example.json')
  end


  it "should contain the base as EUR" do
    expect(@file.getbase).to eql ("EUR")
  end

  it "Should have a date string" do
    expect(@file.getdate).to be_kind_of(Date)
  end


  it "should countain 31 rates" do
    
  end

  it "should all rates should be Floats" do
    
  end

end