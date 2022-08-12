-- Q1a.
SELECT p1.npi, p2.total_claim_count
FROM prescriber as p1
LEFT JOIN prescription as p2 USING(npi)
WHERE p2.total_claim_count IS NOT NULL
ORDER BY p2.total_claim_count DESC;
-- Answer: Highest claim count is 4,538

-- Q1b.
SELECT 
    p1.nppes_provider_last_org_name as last_name,
    p1.nppes_provider_first_name as first_name,
    p1.specialty_description as specialty,
    p2.total_claim_count
FROM prescriber as p1
LEFT JOIN prescription as p2 USING(npi)
WHERE p2.total_claim_count IS NOT NULL
ORDER BY p2.total_claim_count DESC;
-- Answer: David Coffey, specialty being family practice.