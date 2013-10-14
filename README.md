Trabalho
Desenvolver um sistema para uma revendedora de automóveis.
  O sistema deve ter:
• Classes que definam pessoas (clientes PF, clientes PJ e
  vendedores), veículos (carros e bicicletas), vendas e o
  que mais acharem necessário.
• Herança entre classes
• Ao menos duas classes abstratas
• Métodos abstratos são bem-vindos!
• Ao menos uma interface
• Métodos sobrecarregados
• Polimorfismo externo
• Um método poder receber tipos diferentes de objetos sem
  sobrecarga.
• Uma “pseudo-interface” com o usuário
• Pode ser via console
  Opções de:
• Cadastrar um cliente
• Cadastrar um veículo
• Cadastrar um vendedor
• Cadastrar uma venda
• Exibir lista de vendedores e selecionar
• Exibir lista de clientes e selecionar
• Exibir lista de veículos e selecionar
• Obs: embora deva haver classes para carros e bicicletas, bem
  como para clientes PF e PJ, para os cadastros pode-se simplificar
  para apenas um tipo de cliente e de veículo, caso desejem
• Uma opção de imprimir nota da venda, que deve informar
  dados de cliente, vendedor, veículo e preço da venda,
  além de outras informações que acharem relevantes.
• Boas práticas de programação.Fazer um CRUD.
É o que vejo que o trabalho pede.

Pessoa 
 -- Cliente PF ou PJ
 -- Vendedor

Veiculo
 -- Carro
 -- Bicicleta

Vendas (não pode haver vendas sem os outros cadastros)

Cadastro, Exibir, no caso dele é mais fácil porque não há edição, mas poderia fazer. 
E o delete seria algo do Array ao acabar o processo ou se for utilizar banco, fazer, mas sem necessidade.

Exibição de uma venda:
Nome do Cliente
Nome do Vendedor
Informações do que foi comprado, bicicleta ou carro
O que seria a nota que o trabalho pede.
• Tratamento de exceções.

O sistema de Revenda deve comportar as seguintes funcionalidades:

 - Cadastro de Clientes (PF/PJ)
	-- Um usuário não pode cadastrar os dois ao mesmo tempo.
 - Cadastro de Vendedor
 - Cadastro de Veiculo (Carro/Bicicleta)
	-- Cadastrar a quantidade de cada.
	Plus
	-- Caso haja uma venda, mostrar a quantidade menos a venda 
   	(Ex.: 10 carros, vendido 1, total no estoque 9 do modelo tal)

 - Na hora da compra deve ser exibida as listas de Vendedor, Cliente 
   e Veiculo com seus respectivos dados.
	-- Deverá ser possível o cliente comprar mais de um veículo ou veículos diferenciado, 
	no caso um carro e uma bicicleta

 - Na impressão da nota deve ter os dados do vendedor, cliente e veículo.
	-- No caso de veículo deve ter a quantidade e o preço unitário
	-- Informar o valor total na nota.



