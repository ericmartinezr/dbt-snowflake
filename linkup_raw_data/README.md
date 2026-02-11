Welcome to your new dbt project!

### Using the starter project

Try running the following commands:

- dbt run
- dbt test

### Resources:

- Learn more about dbt [in the docs](https://docs.getdbt.com/docs/introduction)
- Check out [Discourse](https://discourse.getdbt.com/) for commonly asked questions and answers
- Join the [chat](https://community.getdbt.com/) on Slack for live discussions and support
- Find [dbt events](https://events.getdbt.com) near you
- Check out [the blog](https://blog.getdbt.com/) for the latest news on dbt's development and best practices

---

Crear DB

```sql
CREATE DATABASE LINKUP_DB;
CREATE SCHEMA LINKUP_SCHEMA;

grant all on database LINKUP_DB to role ACCOUNTADMIN;
grant all on schema LINKUP_SCHEMA to role ACCOUNTADMIN;
grant all on all tables in database LINKUP_DB to role ACCOUNTADMIN;
grant all on future tables in database LINKUP_DB to role ACCOUNTADMIN;
```

Orden de ejecucion

- dbt run (para que las vistas/tablas/etc se materialicen)
- dbt test (con los objetos materializados recien podemos testearlos)
