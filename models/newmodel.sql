
  create view "mydatabase"."public"."newmodel__dbt_tmp"
    
    
  as (
    create view "mydatabase"."public"."newmodel__dbt_tmp" as
    select
        CAST("Número Voo" AS INTEGER) AS "Número Voo",
        CAST("Código Autorização (DI)" AS INTEGER) AS "Código Autorização",
        CAST("Partida Prevista" AS DATE) AS "Partida Prevista",
        CAST("Partida Real" AS DATE) AS "Partida Real",
        CAST("Chegada Prevista" AS DATE) AS "Chegada Prevista",
        CAST("Chegada Real" AS DATE) AS "Chegada Real",
        "ICAO Empresa Aérea" AS "ICAO Empresa Aérea",
        "ICAO Aeródromo Origem" AS "ICAO Aeródromo Origem",
        "ICAO Aeródromo Destino" AS "ICAO Aeródromo Destino",  -- Corrigido conforme o nome da coluna
        "Situação Voo" AS "Situação Voo",
        "Código Justificativa" AS "Código Justificativa",
        "source_file" AS "source_file",
        "Sigla ICAO Empresa Aérea" AS "Sigla ICAO Empresa Aérea",
        "Empresa Aérea" AS "Empresa Aérea",
        "Modelo Equipamento" AS "Modelo Equipamento",
        "Número de Assentos" AS "Número de Assentos",
        "Sigla ICAO Aeroporto Origem" AS "Sigla ICAO Aeroporto Origem",
        "Descrição Aeroporto Origem" AS "Descrição Aeroporto Origem",
        "Sigla ICAO Aeroporto Destino" AS "Sigla ICAO Aeroporto Destino",
        "Descrição Aeroporto Destino" AS "Descrição Aeroporto Destino",
        "Situação Partida" AS "Situação Partida",
        "Situação Chegada" AS "Situação Chegada"
    from public.voos;
  );