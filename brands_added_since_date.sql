WITH MAIN AS (

SELECT
ANALYTICS.PUBLIC.BRANDS.BRAND_NAME,
RAW_ECOM.PUBLIC.FACET_SETS.CREATED_AT::DATE AS DATE

FROM
ANALYTICS.PUBLIC.BRANDS

LEFT JOIN
RAW_ECOM.PUBLIC.FACET_SETS
ON
ANALYTICS.PUBLIC.BRANDS.BRAND_FACET_SET_ID = RAW_ECOM.PUBLIC.FACET_SETS.ID
)
SELECT *
FROM MAIN
-- WHERE DATE >= 'ENTER DATE YYYY-MM-DD';