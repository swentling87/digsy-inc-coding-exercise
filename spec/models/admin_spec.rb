require 'rails_helper'
require 'devise'

RSpec.describe Admin, type: :model do
  describe "create admin" do
    before(:each) do
      @admin = FactoryGirl.create(:admin)
    end
    it "should create a new admin" do
      expect(Admin.all).to_not be_nil
    end
    it "should show one admin" do
      expect(Admin.count).to eq(1)
    end
  end
end
