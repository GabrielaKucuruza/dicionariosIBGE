# Relatório do Projeto Final 

**Objetivo**
	O presente projeto buscou corrigir os erros do pacote dicionariosIBGE, assim como atualizá-lo de acordo com o estado atual das pesquisas do IBGE. Para isso, foram realizadas algumas etapas:


**Levantamento**
	A partir da pesquisa no site do IBGE, chegamos a conclusão de que: 
 - O dicionário da PME se manteve o mesmo até ela ser descontinuada, não havendo atualização necessária. 	
 - Haviam novas edições da PNAD, e o IBGE havia realizado alterações nos
   dicionários de PNADs anteriores presentes no pacote 	
 -  Era necessário adicionar os dicionários da POF 2017-2018


**Atualização e criação de dicionários**
	O trabalho de criação dos novos dicionários buscou manter o padrão observado em pesquisas anteriores. Os arquivos RData de PNADs anteriores tinham em sua maioria dois arquivos, referentes ao dicionário de domicílios e o dicionário de pessoas. Baixando a documentação dos dicionários das pesquisas atualizadas e das pesquisas novas, criamos no Excel os novos dicionários das PNADs, seguindo o padrão de colunas apresentado. Ao fim do processo, isso significou a adição dos novos dicionários das PNADs de 2015, 2014 e 2013, e a atualização dos dicionários das PNADs de 2003, 2004, 2005, 2007, 2009, 2011, 2012. 

A documentação das POFs difere ao longo de suas edições. Tendo isso em consideração, buscamos nos ater ao modelo mais recente, da POF 2008-2009. Criamos os dicionários da POF 2017-2018 a partir da documentação disponível no site do IBGE mantendo os padrões. Também criamos os arquivos de rótulo da POF 2017-2018 de acordo com o padrão visto na última POF. 

Ainda, criamos os arquivos de documentação, disponíveis na pasta man, sobre os dicionários criados. Buscamos nos aproximar com a documentação do pacote, mantendo o modelo. Nota-se que não criamos arquivos de documentação dos dicionários de domicílio e pessoa da PNAD separadamente, tendo em vista que essa documentação só estava presente em alguns anos. No que tange a POF 2017-2018, há documentação de todos os arquivos de rótulo e dicionário, no mesmo modelo da POF 2008-2009. 


**Correção de Erros**

 - Alteramos, no NAMESPACE file, o código para consertar o erro do NOTE
   que estava indicado no CRAN. 	
 - Incluímos o import das funções "utils", "setTxtProgressBar", "txtProgressBar", "type.convert", cujo erro era indicado em todos os NOTES. 	
 - Incluímos e testamos as funções na função que lê os dados. 	
 - Alteramos os rótulos para que não houvesse o erro dos caracteres ASCII.
