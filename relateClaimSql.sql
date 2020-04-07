--查詢所有關聯賠案123456789

SELECT t3.object_id, t3.related_object_id
  FROM t_clm_case t1, t_clm_object t2, t_clm_object_related t3
where t1.case_id = t2.case_id
   and t2.object_id = t3.object_id
   and t1.claim_no = 'CLKR19V0003249'
UNION ALL
SELECT t3.object_id, t3.related_object_id
  FROM t_clm_case t1, t_clm_object t2, t_clm_object_related t3
where t1.case_id = t2.case_id
   and t2.object_id = t3.Related_Object_Id
   and t1.claim_no = 'CLKR19V0003249';


--查詢所有關聯標的

SELECT t2.case_id, t2.related_case_id
  FROM t_clm_case t1, t_clm_case_related t2
where t1.case_id = t2.case_id
   and t1.claim_no = 'CLKR19V0003249'
UNION ALL
SELECT t2.case_id, t2.related_case_id
  FROM t_clm_case t1, t_clm_case_related t2
where t1.case_id = t2.related_case_id
   and t1.claim_no = 'CLKR19V0003249';
