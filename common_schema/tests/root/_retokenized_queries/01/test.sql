SET @queries := 'select 1 from dual; select 2 from dual;';
SELECT 
  _retokenized_queries(@queries) = 
    'select 1 from dual[\0_cs_::;::\0] select 2 from dual[\0_cs_::;::\0]';
;
