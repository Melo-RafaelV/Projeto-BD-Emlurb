-- Fundamenta o planejamento preventivo, permitindo antecipar ações de limpeza e manutenção antes dos períodos de pico histórico.

SELECT 
    dt.mes,
    COUNT(*) AS total_chamados
FROM 
    fato_chamados fc
JOIN 
    dim_servico ds ON fc.id_servico_sk = ds.id_servico_sk
JOIN 
    dim_tempo dt ON fc.id_tempo_demanda_sk = dt.id_tempo_sk
WHERE 
    ds.gruposervico_descricao = 'DRENAGEM'
GROUP BY 
    dt.mes
ORDER BY 
    total_chamados DESC
LIMIT 3;

