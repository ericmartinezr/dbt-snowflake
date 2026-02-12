# Jaffle Shop

Este es un proyecto de demostración para **dbt (data build tool)**, diseñado para mostrar cómo construir un almacén de datos (data warehouse) moderno utilizando dbt y Snowflake.

## Descripción del Proyecto

`jaffle_shop` simula una tienda online que vende "jaffles" (sándwiches tostados). El proyecto transforma datos crudos de clientes y pedidos en modelos analíticos dimensionales.

### Modelos Principales

- **stg_customers**: Vista de staging que limpia los datos crudos de clientes.
- **stg_orders**: Vista de staging que limpia los datos crudos de pedidos.
- **customers**: Tabla dimensional que enriquece la información de los clientes con métricas agregadas de sus pedidos (primera fecha de compra, última fecha de compra, número total de pedidos).

## Cómo ejecutar este proyecto

1. **Ejecutar modelos:** `dbt run`
2. **Probar datos:** `dbt test`
