#  Arquitectura de Despliegue WebLogic14c + GitHub Actions

Bienvenido a este repositorio que contiene la automatización básica para la instalación, configuración y gestión de un entorno **Oracle WebLogic Server 14c** en Oracle Linux 9, enfocado a prácticas **DevOps**.

## 📊 Pipeline de Despliegue Automatizado (CI/CD)

```plaintext
+------------------------+
|   Push a GitHub (main)  |
+-----------+------------+
            |
            v
+---------------------------+
|  GitHub Actions Workflow  |
| (deploy_weblogic.yml)     |
+-----------+---------------+
            |
            v
+---------------------------------+
| Conexión SSH al Servidor Oracle |
| (Usando Secrets de GitHub)      |
+-----------+---------------------+
            |
            v
+----------------------------+
|  Ejecutar clean_domain.sh  |
| (limpia locks, tmp, cache) |
+-----------+----------------+
            |
            v
+--------------------------+
|  Ejecutar start_server.sh |
| (arranca WebLogic Server) |
+-----------+---------------+
            |
            v
+----------------------------------+
| WebLogic 14c disponible en:      |
| http://<IP-SERVIDOR>:7001/console|
+----------------------------------+

weblogic14c-devops/
├── .github/
│   └── workflows/
│       └── deploy_weblogic.yml     <-- Workflow de GitHub Actions
├── clean_domain.sh                 <-- Limpia locks y ficheros temporales
├── start_server.sh                 <-- Arranca WebLogic en background
├── stop_server.sh                  <-- Detiene WebLogic
├── README.md                        <-- Documentación completa del proyecto
└── LICENSE                          <-- (Opcional) Licencia MIT o Libre
