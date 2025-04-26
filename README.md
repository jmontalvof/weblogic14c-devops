#  Arquitectura de Despliegue WebLogic14c + GitHub Actions

Bienvenido a este repositorio que contiene la automatización básica para la instalación, configuración y gestión de un entorno **Oracle WebLogic Server 14c** en Oracle Linux 9, enfocado a prácticas **DevOps**.

+----------------------+        +--------------------------+
| GitHub Actions (CI)  |        |   Oracle Linux 9 Server   |
| - Código fuente      |        |   - WebLogic 14c          |
| - Workflows YAML     |        |   - Scripts DevOps        |
+----------+-----------+        +-----------+--------------+
           |                                    |
           |  SSH (Secrets: IP, usuario, clave) |
           +------------------------------------+
                         ⬇
             Ejecuta scripts remotos:
             - clean_domain.sh
             - start_server.sh
             - deploy_app.sh 
