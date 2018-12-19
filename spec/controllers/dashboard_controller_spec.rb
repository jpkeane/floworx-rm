require 'rails_helper'

RSpec.describe DashboardController, type: :controller do
  let!(:user) { FactoryBot.create(:user) }

  context 'not signed in' do
    describe 'GET #index' do
      it 'returns http found to login page' do
        get :index
        expect(response).to have_http_status(:found)
      end
    end
  end

  context 'signed in' do
    describe 'GET #index' do
      it 'returns http success' do
        request.session[:user_id] = user.id
        get :index
        expect(response).to have_http_status(:success)
      end
    end
  end

  context 'remembered' do
    describe 'GET #index' do
      it 'returns http success' do
        token = user.remember
        cookies.signed[:user_id] = user.id
        cookies[:remember_token] = token
        get :index
        expect(response).to have_http_status(:success)
      end
    end
  end
end
