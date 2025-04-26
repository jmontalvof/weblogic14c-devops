# WebLogic Server 14c - Entorno de Desarrollo DevOps

Bienvenido a este repositorio que contiene la automatización básica para la instalación, configuración y gestión de un entorno **Oracle WebLogic Server 14c** en Oracle Linux 9, enfocado a prácticas **DevOps**.

---

## 🚀 ¿Qué incluye este proyecto?

- Instalación silenciosa de WebLogic Server 14c (`fmw_14.1.1.0.0_wls_lite_generic.jar`)
- Creación automática de dominio (`base_domain`) en modo **development**.
- Scripts de gestión:
  - `clean_domain.sh` ➔ Limpieza de residuos y archivos temporales del dominio.
  - `start_server.sh` ➔ Arranque controlado del AdminServer.
- Preparado para integración en **pipelines CI/CD** o **máquinas virtuales ligeras**.

---

## 🛠️ Estructura de Scripts

| Archivo            | Descripción                                      |
|--------------------|--------------------------------------------------|
| `clean_domain.sh`   | Elimina archivos `.lok`, `tmp/`, `cache/` y logs antiguos. |
| `start_server.sh`   | Inicia el AdminServer en segundo plano con redirección de logs. |
| `startWebLogic.sh`  | Script original de WebLogic para levantar el servidor manualmente. |

---

## 📦 Pre-requisitos

- Oracle Linux 8/9 o Red Hat compatible.
- Java SE 17 (versión Oracle instalada manualmente).
- Permisos de usuario `oracle`.
- Variables configuradas correctamente (`JAVA_HOME`, `MW_HOME`, `DOMAIN_HOME`).

---

## 📈 Flujo de Ejecución

```bash
# 1. Limpiar entorno anterior
./clean_domain.sh

# 2. Arrancar AdminServer
./start_server.sh

# 3. Acceder a la consola de administración:
http://localhost:7001/console
