require 'rails_helper'

RSpec.describe MenusController do
    describe 'GET #index' do
        it "populates an array of all menus" do
            ayam_geprek = FactoryBot.create(:menu, name: 'Ayam geprek')
            ayam_penyet = FactoryBot.create(:menu, name: 'Ayam penyet')

            get :index
            expect(assigns(:menus)).to match_array([ayam_geprek, ayam_penyet])
        end

        it "renders the :index template" do
        end
    end
end