require 'rails_helper'

RSpec.describe SessionsController, type: :controller do
  let!(:user) { FactoryBot.create(:user) }

  context 'when not signed in' do
    describe 'GET #new' do
      it 'returns http success' do
        get :new
        expect(response).to have_http_status(:success)
      end
    end

    describe 'POST #create with valid password' do
      it 'returns http success' do
        post :create, params: { session: { email_address: user.email_address, password: user.password } }
        expect(response).to have_http_status(:found)
      end
    end

    describe 'POST #create with invalid password' do
      it 'returns http success' do
        post :create, params: { session: { email_address: user.email_address, password: 'notthepass' } }
        expect(response).to have_http_status(:success)
      end
    end
  end

  context 'when signed in' do
    describe 'GET #new' do
      it 'returns http redirect' do
        request.session[:user_id] = user.id
        get :new
        expect(response).to have_http_status(:found)
      end
    end
  end
end
