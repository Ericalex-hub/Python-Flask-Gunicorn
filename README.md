# Despliegue de aplicación Python con Flask y Gunicorn

## 1. Configuración inicial
![Instalación paquetes](img/Instalación-pip-gunicorn-1.png)

![Instalación dependencias](img/Instalación-dependencias-3.png)

*Figura 1: Instalación de dependencias básicas*

![Creación directorio](img/Inicio-entorno-visual-2.png)

*Figura 2: Creación del directorio de trabajo con permisos adecuados*

## 2. Pruebas iniciales
![Flask desarrollo](img/Correr-aplicación-4.png)

*Figura 3: Aplicación funcionando con servidor de desarrollo de Flask*

*Figura 4: Aplicación funcionando con Gunicorn 'Se me olvido hacer la captura de esto'*

## 3. Configuración como servicio
![Servicio systemd](img/Estado-nginx-1-5.png)

*Figura 5: Estado del servicio systemd*

![Estado servicio](img/Comprobación-del-flask_app-6.png)

*Figura 6: Servicio flask_app activo y funcionando*

## 4. Configuración de Nginx
![Config Nginx](img/Comprobación-nginx-2-8.png)

*Figura 9: Configuración de Nginx como proxy inverso*