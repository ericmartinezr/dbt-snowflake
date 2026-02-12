# LinkUp Raw Data

Este proyecto dbt gestiona la ingestión y transformación inicial de datos crudos "LinkUp". El objetivo es preparar estos datos para su uso en análisis posteriores, siguiendo las mejores prácticas de modelado de datos.

## Estructura del Proyecto

El proyecto sigue una arquitectura de capas ("layers") para organizar las transformaciones:

### 1. Staging (`models/staging`)
- **Propósito:** Limpieza inicial y estandarización de tipos de datos.
- **Materialización:** Vistas (`view`).
- **Fuente:** Datos crudos cargados en Snowflake.

### 2. Intermediate (`models/int`)
- **Propósito:** Transformaciones complejas, cruces (joins) y lógica de negocio intermedia que no es el resultado final pero es necesaria para los marts.
- **Materialización:** Vistas (`view`).

### 3. Marts (`models/marts`)
- **Propósito:** Tablas finales listas para el consumo de analistas y herramientas de BI.
- **Materialización:** Tablas (`table`).

## Ejecución

Para crear la DB

Crear DB

```sql
CREATE DATABASE LINKUP_DB;
CREATE SCHEMA LINKUP_SCHEMA;

GRANT ALL ON DATABASE LINKUP_DB TO ROLE ACCOUNTADMIN;
GRANT ALL ON SCHEMA LINKUP_SCHEMA TO ROLE ACCOUNTADMIN;
GRANT ALL ON ALL TABLES IN DATABASE LINKUP_DB TO ROLE ACCOUNTADMIN;
GRANT ALL ON FUTURE TABLES IN DATABASE LINKUP_DB TO ROLE ACCOUNTADMIN;
```

Para procesar los datos de este proyecto:

```bash
dbt run --select linkup_raw_data
```
