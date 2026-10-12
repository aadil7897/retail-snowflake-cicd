EXECUTE IMMEDIATE $$
DECLARE
  smoke_failed EXCEPTION (-20001, 'Smoke test failed: expected curated objects are missing.');
  actual_count NUMBER;
BEGIN
  SELECT COUNT(*) INTO :actual_count
  FROM INFORMATION_SCHEMA.TABLES
  WHERE TABLE_SCHEMA='CURATED'
    AND TABLE_NAME IN ('DIM_CUSTOMER','DIM_PRODUCT','DIM_STORE','DIM_DATE','FACT_SALES','FACT_INVENTORY_SNAPSHOT');

  IF (actual_count <> 6) THEN
    RAISE smoke_failed;
  END IF;

  RETURN 'PASS';
END;
$$;
