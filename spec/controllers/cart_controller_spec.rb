require 'rails_helper'

RSpec.describe CartController, type: :controller do

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #edit" do
    it "returns http success" do
      get :edit
      expect(response).to have_http_status(:success)
    end
  end

  describe "GET #confirmation" do
    it "returns http success" do
      get :confirmation
      expect(response).to have_http_status(:success)
    end
  end

end
