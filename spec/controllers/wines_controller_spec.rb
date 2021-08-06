require 'rails_helper'


RSpec.describe WinesController, type: :controller do
    describe 'GET wines#index' do

        it 'renders the index template' do
            @user = User.create(email: "juanito@example.com", password: "123123", password_confirmation: "123123")

            sign_in @user
            get :index
            expect(response).to render_template("index")
        end

        it 'assigns @wines' do
            @user = User.create(email: "carito@example.com", password: "123123", password_confirmation: "123123")
            sign_in @user
            wine = Wine.create(name: "Santa Elena", score: 100)
            wines = Wine.all
            get :index
            expect(assigns(:wines)).to eq([wine])
        end
    end

    describe 'GET wines#show' do
        it 'renders the show template' do
            @user = User.create(email: "julito@example.com", password: "123123", password_confirmation: "123123")
            sign_in @user
        
            wine = Wine.create(name: "Gato", score: 100)
        
            get :show, params: { id: wine.id }
            expect(response).to render_template("show")
        end
    end
end
