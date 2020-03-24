require 'rails_helper'

describe "validate_word controller tests", :type=> :request do

    before do
        get '/validate_word',params:{:word => 'hello'}
    end

    it 'returns true when the word is valid' do
        expect(response.body).to eq("true")
    end

    it 'returns false when the word is invalid' do
        get '/validate_word', params:{:word => 'madan'}

        expect(response.body).to eq("false")
    end
end