SELECT 
    i.person_id,
    i.income,
    SUM(
        (LEAST(i.income, COALESCE(s.slab_end, i.income)) - s.slab_start)
        * s.tax_rate / 100
    ) AS tax_amount
FROM income_details i
JOIN tax_slabs s
ON i.income > s.slab_start
GROUP BY i.person_id, i.income;