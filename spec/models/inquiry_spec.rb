require 'rails_helper'

RSpec.describe Inquiry, type: :model do
  include_context "db_cleanup", :transaction
  
  context "valid inquiry" do
    let(:inquiry) { FactoryGirl.create(:inquiry) }

    it "creates new instance" do
      db_inquiry=Inquiry.find(inquiry.id)
      expect(db_inquiry.subject).to eq(inquiry.subject)
      expect(db_inquiry.text).to eq(inquiry.text)
    end
  end

end
