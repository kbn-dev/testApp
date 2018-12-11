require 'spec_helper'
require 'rails_helper'

describe 'ルーティング' do
    it '記事一覧ページ' do
        expect(get: 'http://localhost').to route_to(
            host: 'localhost',
            controller: 'articles',
            action: 'index'
        )
    end
end