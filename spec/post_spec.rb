describe 'fazer uma requisição' do
    it 'post' do
        @body =
        {
            "name": "Jotta2",
            "last-name": "V2",
            "email": "jottav2@mailinator.com",
            "age": 29,
            "phone": "11900000000",
            "address": "Rua do Zé",
            "state": "São Paulo",
            "city": "São Paulo"
        }.to_json

        #Forma simples do HTTParty
        # @headers = {
        #     "Accept": 'application/vnd.tasksmanager.v2',
        #     'Content-Type': 'application/json'
        # }

        # @request = HTTParty.post('https://api-de-tarefas.herokuapp.com/contacts', body: @body, headers: @headers)
        # p @request

        @request = Contact.post('/contacts', body: @body)
        p @request
    end

end