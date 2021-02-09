describe 'usando' do
    it 'token' do
        #Gera um e-mail aleatório
        @email = Faker::Internet.email

        @body = {
            user: {
                email: @email,
                password: '123456',
                password_confirmation: '123456'
            }
        }.to_json

        @headers = {
            Accept: 'application/vnd.tasksmanager.v2',
            'Content-Type': 'application/json'
        }

        @create = Create.post('/users', body: @body, headers: @header)
        p @create.body
        p @create.parsed_response['data']['attributes']['auth-token']

        @body_one = {
            session: {
                email: @email,
                password: '123456'
            }
        }.to_json

        @header_one = {
            Accept: 'application/vnd.tasksmanager.v2',
            'Content-Type': 'application/json',
            #Para caso de token aleatório
            Authorization: "#{@create.parsed_response['data']['attributes']['auth-token']}"
            #Para caso de token único => Authorization: "giguyigyit6t876987809ghbjkbkb"
        }

        @login = Create.post('/sessions', body: @body_one, headers: @header_one)
        p @login.body
    end
end