docker compose exec mysql mysqldump -uroot -proot --no-data olivia_db_local_temp_replication > test_no_data.sql
docker compose exec -T mysql mysql -uroot -proot test_olivia_db_local_temp_replication < test_no_data.sql
docker compose exec mysql mysqldump -uroot -proot --no-create-info olivia_db_local_temp_replication django_migrations > django_migrations.sql
docker compose exec -T mysql mysql -uroot -proot test_olivia_db_local_temp_replication < django_migrations.sql
