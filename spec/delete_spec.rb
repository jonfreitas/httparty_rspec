describe 'fazer requisição' do
    it 'delete' do
        #HTTParty.delete('https://api-de-tarefas.herokuapp.com/contacts/2747')

        Contact.delete('/contacts/2747')
    end
end