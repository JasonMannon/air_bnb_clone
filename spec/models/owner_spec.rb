require 'spec_helper'

describe Owner do
  it "sends a signup confirmation email when the user is created" do
    owner = FactoryGirl.create(:owner)
    ActionMailer::Base.deliveries.last.to.should eq [owner.email]
  end
end
