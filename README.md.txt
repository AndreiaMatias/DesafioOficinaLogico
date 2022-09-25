#Desafio oficina mecânica

Com base no desafio de modelagem, foi criado o banco de dados para oficina mecânica conforme instruções e 
refinamento do modelo.

Foram criados três arquivos: oficina, populando_tabelas e queries.

O banco de dados oficina foi criado no arquivo oficina e conta com as tabelas:
- Cliente,
- Veículo,
- Equipe,
- Mecânico,
- Serviços,
- Peças,
- OrdemServico,
- OrdemServico_tem_Servicos,
- OrdemServico_tem_Pecas.

Foram inseridos dados nas tabelas no script populando_tabelas.

Foram feitas pesquisas de modo a obter as seguintes informações:
- Seleção de clientes e seus veículos;
- Quantidades de ordens de serviço por cliente;
- Quantidade de ordens de serviços emitidas no ano atual por equipe;
- Ordens de serviços ordenadas pelo número;
- valor total por ordem de serviço.

Para tanto foram utilizados:
- junções de tabelas com inner, left join e union;
- agrupamento com group by;
- ordenação com order by;
- subqueries;
- count e sum.