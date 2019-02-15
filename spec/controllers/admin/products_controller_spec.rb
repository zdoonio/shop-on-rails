require 'rails_helper'

RSpec.describe Admin::ProductsController, type: :controller do

  describe "GET #index" do
    it "returns http unauthorized" do
      get :index
      expect(response).to have_http_status(:unauthorized)
    end
  end

  describe "GET #new" do
    it "returns http unauthorized" do
      get :new
      expect(response).to have_http_status(:unauthorized)
    end
  end

end
