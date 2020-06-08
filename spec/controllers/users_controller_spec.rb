require 'rails_helper'

RSpec.describe UsersController do

  describe "GET #show" do
    it "returns http success" do
      get :show
      expect(response).to have_http_status(:redirect)
    end
  end

end
