# Exemplo de Model First com Entity Framework

Existem 3 tipos de abordagens quanto trabalhamos com o ORM:
1. Code First (código primeiro)
2. Model First (modelo primeiro)
3. Database First (banco de dados primeiro)

Neste simples exemplo tratamos do *Model* *First*, onde primeiro o **modelo** é construído em um designer no Visual Studio e a partir
deste modelo, o banco de dados é criado.

## Instruções para gerar a base de dados a partir da aplicação
Antes de fazer inserções no banco, devemos criá-lo manualmente utilizando o modelo que criamos no designer:

1. Carregue o projeto e no Gerenciador de Soluções de um duplo clique em "ModeloBlogging.edmx" para abri-lo no designer.
2. Com o designer aberto onde é mostrado as 3 entidades do projeto, clique com o botão direito e escolha "Generate Database from Model".
3. No wizard, crie a conexão e escolha o nome do arquivo de banco que será gerado no disco.
4. Avance e conclua.
5. Será gerado um arquivo com o script de acordo com o modelo. Execute-o para criar o banco de dados.

Após a execução do script, a aplicação deve ser capaz de inserir itens no banco.
