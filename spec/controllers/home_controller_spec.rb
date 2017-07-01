require 'rails_helper'

RSpec.describe HomeController, type: :controller do
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #music' do
    it 'returns http success' do
      get :music
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #projects' do
    it 'returns http success' do
      get :projects
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #engsoc' do
    it 'returns http success' do
      get :engsoc
      expect(response).to have_http_status(:success)
    end
  end

  describe 'GET #contact' do
    it 'returns http success' do
      get :contact
      expect(response).to have_http_status(:success)
    end
  end
end
