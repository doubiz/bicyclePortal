require 'rails_helper'

RSpec.describe Bicycle, type: :model do
  it "is invalid without a name" do
    b = FactoryGirl.build(:bicycle, style: "test", price: 24.5)
    b.should_not be_valid
  end
  it "is invalid without a style" do
    FactoryGirl.build(:bicycle, name: "test", price: 24.5).should_not be_valid
  end
  it "is invalid without a price" do
    FactoryGirl.build(:bicycle, name: "test", style: "pink").should_not be_valid
  end
end
