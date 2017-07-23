require 'rails_helper'

RSpec.describe IdCard, type: :model do
  before :each do
  	@item = IdCard.new
  end

  it "is valid with valid attributes" do
  	@item.name = "anything"
  	@item.department_name = "anything"
  	@item.roll_number = "anything"
  	@item.session = "anything"
  	expect(@item).to be_valid
  end

  it "is invalid without a name" do
  	@item.name = nil
  	expect(@item).to_not be_valid
  end

  it "is invalid without a depertment_name" do
  	@item.department_name = nil
  	expect(@item).to_not be_valid
  end

  it "is invalid without a roll_number" do
  	@item.roll_number = nil
  	expect(@item).to_not be_valid
  end

  it "is invalid without a session" do
  	@item.session = nil
  	expect(@item).to_not be_valid
  end  

end
