require 'rails_helper'

RSpec.describe Admin::CategoriesController, type: :controller do

  describe "GET #index" do
    it "returns http unautorized" do
      get :index
      expect(response).to have_http_status(:unautorized)
    end
  end

  describe "GET #new" do
    it "returns http unautorized" do
      get :new
      expect(response).to have_http_status(:unautorized)
    end
  end

  describe "GET #edit" do
    it "returns http unautorized" do
      get :edit
      expect(response).to have_http_status(:unautorized)
    end
  end

end
