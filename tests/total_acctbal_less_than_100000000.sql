SELECT
	sum(c_acctbal)
FROM {{ ref('playing_with_tests') }}
HAVING sum(c_acctbal) < 100000000
