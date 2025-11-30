-- Mapeia desigualdades na eficiência do serviço público, 
-- evidenciando se determinadas zonas da cidade estão sendo negligenciadas em comparação a outras.

SELECT 
    dl.rpa,
    dl.bairro,
    COUNT(*) AS volume_chamados,
    CAST(AVG(CAST(fc.tempo_conclusao AS NUMERIC)) AS INTEGER) AS media_dias_conclusao
FROM 
    fato_chamados fc
JOIN 
    dim_localizacao dl ON fc.id_localizacao_sk = dl.id_localizacao_sk
WHERE 
    fc.resolvido = 1
GROUP BY 
    dl.rpa, dl.bairro
ORDER BY 
    media_dias_conclusao DESC;
