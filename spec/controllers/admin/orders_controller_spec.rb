require 'rails_helper'

RSpec.describe Admin::OrdersController, type: :controller do

  describe "GET #index" do
    it "returns http unauthorized" do
      get :index
      expect(response).to have_http_status(:unauthorized)
    end
  end

end
