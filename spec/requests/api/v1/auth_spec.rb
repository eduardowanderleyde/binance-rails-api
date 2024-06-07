require 'rails_helper'

RSpec.describe "Api::V1::Auths", type: :request do
  describe "/login",focus: true do
    it "missing params" do
      post api_v1_auth_login_path
      expect(response.status).to be(400)
    end

    it "user not found" do
      post api_v1_auth_login_path(email: 'a@email.com', password: '123456')
      expect(response.status).to be(404)
    end

    it "unauthenticated user" do
      user = create(:user)
      post api_v1_auth_login_path(email: user.email, password: '123457')
      expect(response.status).to be(401)
    end

    it "authenticated user" do
      user = create(:user)
      post api_v1_auth_login_path(email: user.email, password: '123456')
      parsed_body = JSON.parse(response.body)
      expect(response.status).to be(200)
      expect(parsed_body).to include('token')
    end
  end
end
