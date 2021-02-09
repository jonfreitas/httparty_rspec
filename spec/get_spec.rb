describe 'fazer uma requisição' do
    it 'get' do
        #Se não usássemos o módulo, o httparty com o get deveria ser chamado dessa forma:
        
        #@first_option = HTTParty.get('https://api-de-tarefas.herokuapp.com/contacts')
        #p @first_option

        @best_option = Contact.get('/contacts/2741')
        p @best_option
    end
end