require "spec_helper"

describe OwnerMailer do
  describe "comment_confirmation" do
    let(:mail) { OwnerMailer.comment_confirmation }

    it "renders the headers" do
      mail.subject.should eq("Comment confirmation")
      mail.to.should eq(["to@example.org"])
      mail.from.should eq(["from@example.com"])
    end

    it "renders the body" do
      mail.body.encoded.should match("Hi")
    end
  end

end
