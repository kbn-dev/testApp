require 'spec_helper'

describe String do
    describe '#<<' do
        it '文字の追加' do
            s = "ABC"
            s << "D"
            expect(s.size).to eq(4)
        end
        it 'nilは追加できない' do
            s = "ABC"
            expect { s << nil }.to raise_error(TypeError)
        end
    end
end