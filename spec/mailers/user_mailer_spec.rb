require "spec_helper"

describe UserMailer do
  describe "deliver_signup_confirmation" do
    owner = FactoryGirl.create(:owner)
    let(:mail) { UserMailer.deliver_signup_confirmation(owner) }

    it "renders the headers" do
      mail.subject.should eq("Sign Up Confirmation")
      mail.to.should eq(["jay@gmail.com"])
      mail.from.should eq(["from@example.com"])
    end

#     it "renders the body" do
#       mail.body.encoded.should match("Hi")
#     end
  end

end
