describe 'fazer requisição' do
    context 'para alterar dados com' do

        it 'put' do
            @body_put = {
                "id": 2611,
                "name": "Jotta28",
                "last-name": "V28",
                "email": "jottav28@mailinator.com",
                "age": 29,
                "phone": "11900000000",
                "address": "Rua do Zé",
                "state": "São Paulo",
                "city": "São Paulo"
            }.to_json

            @request_put = Contact.put('/contacts/2611', body: @body_put)
            p @request_put
        end

        it 'patch' do
            @body_patch = {
                "id": 2575,
                "name": "Jotta30",
                "last-name": "V30",
                "email": "jottav30@mailinator.com"
            }.to_json

            @request_patch = Contact.patch('/contacts/2575', body: @body_patch)
            p @request_patch
        end
    end
end