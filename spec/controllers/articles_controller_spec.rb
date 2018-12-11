require 'spec_helper'
require 'rails_helper'

describe ArticlesController do

    describe '#create' do
        let(:params_hash) { attributes_for(:article) }
        it 'redirect' do
            post :create, params: { article: params_hash }
            expect(response).to redirect_to(articles_url)
        end
    end

    describe '#edit' do
        let(:params_hash) { attributes_for(:article) }
        let(:article) { create(:article) }
        let(:update_attributes) do
            {
                non_public: true
            }
        end

        it 'change non_public' do
            patch :update,  params: {id: article.id, article: update_attributes }, session: {}
            article.reload
            expect(article).to be_non_public
        end
    end
end