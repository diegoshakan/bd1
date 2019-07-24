1 - Consulta
SELECT m.nome_modelo as "Modelo", ver.nome_versao as "Versao", v.fabricacao_ano as "Fabricação", v.modelo_ano as "Ano do Modelo", v.preco as "Valor", v.quilometragem as "Quilometragem", car.tipo_carroceria as "Tipo"
FROM TbVeiculo as v
INNER JOIN TbModelo as m
on v.fk_idModelo = m.idModelo
INNER JOIN TbVersao as ver
on v.fk_idVersao = ver.idVersao
INNER JOIN TbCarroceria as car
on v.fk_idCarroceria = car.idCarroceria
and v.fk_idCarroceria = 1

2- Consulta
SELECT v.fabricacao_ano as "Fabricação", v.modelo_ano as "Ano do Modelo", v.preco as "Valor", v.quilometragem as "Quilometragem", cor.nome_cor as "Cor",
v.unico_dono as "Único Dono", m.nome_modelo as "Modelo", v.revisao_concercionaria as "Revisão Concersionárias", v.fk_idCambio as "Câmbio"
FROM TbVeiculo as v
INNER JOIN TbModelo as m
on v.fk_idModelo = m.idModelo
and m.idModelo = 1
INNER JOIN TbCor as cor
on v.fk_idCor = cor.idCor
INNER JOIN TbCambio as c
on v.fk_idCambio = c.idCambio
WHERE v.unico_dono = 1 and v.quilometragem <= 20000 and v.modelo_ano = 2017 OR v.unico_dono = 1 and v.quilometragem <= 20000 and v.modelo_ano = 2018

3- Consulta

SELECT v.fabricacao_ano as "Fabricação", v.modelo_ano as "Ano do Modelo", v.preco as "Valor", v.quilometragem as "Quilometragem", cor.nome_cor as "Cor",
m.nome_modelo as "Modelo", ver.nome_versao as "Versão", v.revisao_concercionaria as "Revisão Concersionárias"
FROM TbVeiculo as v
INNER JOIN TbModelo as m
on v.fk_idModelo = m.idModelo
INNER JOIN TbCor as cor
on v.fk_idCor = cor.idCor
INNER JOIN TbVersao as ver
on v.fk_idVersao = ver.idVersao
and ver.nome_versao = "gli"
WHERE v.revisao_concercionaria = 0 and cor.nome_cor != "Prata" and v.modelo_ano = 2017 or v.revisao_concercionaria = 0 and cor.nome_cor != "Prata" and v.modelo_ano = 2018

Obsevarção: Devido a data que cadastrei os veículos, alguns já haviam sido vendidos da loja, e os dados não permanecem mais no site. Por isso não aparecia mais veículos para revisão na concersionária como verdadeiro. Apenas um resultado para não verdadeiro naquele campo. Então tomei a liberdade de modificar este campo de pesquisa para que haja resultado.

4- Consulta
SELECT avg(v.preco) as "Média Preço", m.nome_modelo as "Modelo", ver.nome_versao as "versão", v.modelo_ano as "Ano Modelo"
FROM TbVeiculo as v
INNER JOIN TbModelo as m
on v.fk_idModelo = m.idModelo
and m.idModelo = 1
INNER JOIN TbVersao as ver
ON v.fk_idVersao = ver.idVersao
and v.modelo_ano = 2017 or v.modelo_ano = 2018
WHERE ver.idVersao = 1 or ver.idVersao = 2
GROUP BY m.nome_modelo, ver.nome_versao, v.modelo_ano

5- Consulta

SELECT min(v.preco) as "Preço", m.nome_modelo as "Modelo", c.tipo_cambio
FROM TbVeiculo as v
INNER JOIN TbModelo as m
on v.fk_idModelo = m.idModelo
INNER JOIN TbCambio as c
on v.fk_idCambio = c.idCambio
and c.idCambio = 1
WHERE fk_idModelo = 3
GROUP BY v.modelo_ano, c.tipo_cambio

6- Consulta

SELECT *
FROM TbVeiculo as v
INNER JOIN TbModelo as m
ON v.fk_idModelo = m.idModelo
and m.nome_modelo = "Civic"
WHERE v.garantia = 1

7- Consulta

SELECT AVG(v.preco), m.nome_modelo, ver.nome_versao, v.modelo_ano
FROM TbVeiculo v
INNER JOIN TbModelo m
on v.fk_idModelo = m.idModelo
INNER JOIN TbVersao ver
on v.fk_idVersao = ver.idVersao
WHERE m.nome_modelo = 'Corolla' and ver.nome_versao = 'XEI' and v.modelo_ano = 2017 
or m.nome_modelo = 'Civic' and ver.nome_versao = 'EXL' and v.modelo_ano = 2017
GROUP BY m.nome_modelo, ver.nome_versao

8- Consulta

SELECT *
FROM TbVeiculo as v
WHERE v.fk_idCarroceria = 2

9- Consulta
SELECT min(v.preco) as "Preço", m.nome_modelo "Modelo"
from TbVeiculo as v
INNER JOIN TbModelo as m
on v.fk_idModelo = m.idModelo
WHERE v.fk_idCarroceria = 2
