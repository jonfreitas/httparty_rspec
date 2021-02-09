module Contact
    include HTTParty

    #URL base de contato
    base_uri 'https://api-de-tarefas.herokuapp.com'

    #Opções do service
    format :json
    headers Accept: 'application/vnd.tasksmanager.v2',
            'Content-Type': 'application/json'
end

#Toda vez que esse módulo for chamado, a url padrão dele será https://api-de-tarefas.herokuapp.com.

#E ele terá os headers com as opções Accept: 'application/vnd.tasksmanager.v2', 'Content-Type': 'application/json'

#Será no formato JSON