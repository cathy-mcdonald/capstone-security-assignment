require 'rails_helper'

RSpec.describe "Inquiries", type: :request do
  include_context "db_cleanup_each", :transaction
  let(:account) { signup FactoryGirl.attributes_for(:user) }

  context "quick API check" do
    let!(:user) { login account }

    it_should_behave_like "resource index", :inquiry
    it_should_behave_like "show resource", :inquiry
    it_should_behave_like "create resource", :inquiry
    it_should_behave_like "modifiable resource", :inquiry
  end

end