-- Identifica gargalos operacionais críticos, apontando quais serviços exigem revisão urgente de processos ou mais recursos.

SELECT 
    ds.gruposervico_descricao AS categoria,
    ROUND(AVG(fc.tempo_conclusao)) AS media_dias
FROM 
    fato_chamados fc
JOIN 
    dim_servico ds ON fc.id_servico_sk = ds.id_servico_sk
WHERE 
    fc.resolvido = 1 
GROUP BY 
    ds.gruposervico_descricao
ORDER BY 
    media_dias DESC;
