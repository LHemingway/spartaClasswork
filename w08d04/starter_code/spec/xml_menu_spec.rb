require 'spec_helper'

describe "XML menu" do

  before(:all) do
    @xml_menu = Nokogiri::XML(File.read('xml_menu.xml'))
  end



  it "no price should be more than £10" do
    @xml_menu.search('food').each do |food|
      price = food.element_children[1].content.tr('£','').to_f
      expect(price).to be <= 10.0
    end
  end

  it "should have no item with calories over 1000 except for the full breakfast" do
    @xml_menu.search('food').each do |food|
      @food = food.element_children[0].content

      if @food == "Full Breakfast"
        @food = food.element_children[3].content
        expect(@food.to_i).to be >= 1000
      else
        @food = food.element_children[3].content
        expect(@food.to_i).to be <= 1000
      end
    end
  end

  it "should have all waffle dishes stating you get two waffles" do

  end


end