describe 'fazer uma requisição' do
    it 'get' do
        @best_option = Contact.get('/contacts/2741')
        #p @best_option

        # p @best_option.code
        # expect(@best_option.code).to eq 200

        p @best_option.body
        #p @best_option.parsed_response['data']['attributes']['name']
        expect(@best_option.parsed_response['data']['attributes']['name']).to eq 'Franklin'
        expect(@best_option.parsed_response['data']['attributes']['last-name']).to eq 'Wehner'
        expect(@best_option.parsed_response['data']['attributes']['email']).to eq 'soila_dickens@1612477156.com'
        expect(@best_option.parsed_response['data']['attributes']['age']).to eq 19
    end
end