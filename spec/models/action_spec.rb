require 'rails_helper'

RSpec.describe Action, type: :model do
  before do
    @action = FactoryGirl.create(:action)
  end

    describe "attributes" do
      it "responds to title" do
        expect(@action).to respond_to(:title)
      end
      it "responds to description" do
        expect(@action).to respond_to(:description)
      end
      it "responds to img" do
        expect(@action).to respond_to(:img)
      end
    end

    describe "create action" do
      it "should create a new action" do
        expect(Action.all).to_not be_nil
      end
      it "should show one action" do
        expect(Action.count).to eq(1)
      end
    end
end
