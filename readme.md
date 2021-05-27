# INICIAR PROYECTOS .NET CON ORACLE

## Requisitos

- Base de datos [Oracle Database XE](https://www.oracle.com/database/technologies/xe-downloads.html)
- Herramientas de conexion [Oracle Data Provider for .NET (ODP.NET)](https://www.oracle.com/database/technologies/dotnet-odacdeploy-downloads.html)
- Gestor de Base de datos [SQL Developer](https://www.oracle.com/tools/downloads/sqldev-downloads.html)
- Modelado de base de datos [SQL Developer Data Modeler](https://www.oracle.com/es/database/technologies/appdev/datamodeler.html)
- IDE [VS 2019 comminity](https://visualstudio.microsoft.com/es/vs/community/)

Las Herramientas de gestor de base de datos y modelado que brinda oracle son gratiutas.

## Instalación de Oracle Database XE

1. Extraer el contenido del zip y ejecutamos el archivo `setup.exe` para iniciar la instalación. ![Extract](img/OracleXE_extract.png)

2. Seguir los pasos de instalación y elegir la ubicación en donde se instalara el producto. ![Install Path](img/OracleXE_install_path.png)

3. Establecer la constraseña que se usara para acceder a la base de datos. ![Set Pass](img/OracleXE_install_pass.png)

4. Tener en cuenta las ubicaciones que se muestran aquí para futuras configuraciones ![Oracle Path](img/OracleXE_install_fullpath.png)

5. Al finalizar Oracle nos indicara las rutas por las cuales podemos acceder a la base de datos instalada. ![Install finish](img/OracleXE_install_finish.png)

6. probamos la instalacion abriendo un cmd y digitamos lo siguiente `cd <oracle_home>\bin`y `lsnrctl status` ![Test install](img/OracleXE_install_test.png)

Con esto podemos verificar que esta funcionando correctamente la instalación de la base de datos y que estan escuchando los puertos para oracle.

**Nota:** *Recuerda que durante la instalación se pedira al usuario dar permisos en el firewall*

## Instalación de SQL Developer

Para probar la instalación de la base de datos de Oracle utilizaremos esta herramienta que nos proporciona Oracle de forma gratuita. Usaremos la versión que incluye el JDK 8. ![SQL Developer](img/Data_Modeler_Download.png)

Lo que haremos es descargar la herramienta desde el sitio oficial de oracle y luego extraemos el contenido del archivo .zip en una ubicacion que sea de facil acceso. Por ejemplo en la raiz del disco `C:` ![Extract Files](img/SQL_Developer_Extract.png)

Ahora ejecutaremos el archivo `sqldeveloper.exe`. Al iniciar por primera vez no preguntara si queremos importar alguna configuracion previa del programa. ![Import configs](img/SQL_Developer_Import.png)

Una vez cargado el programa podemos configurar la conexiones de base de datos. Este programa nos permite importar las configuraciones que estan dentro de archivo de `<oracle_home>\network\admin\tnsnames.ora` el cual viene configurado cuando realizamos la instalación de la BD ![TNS Import](img/SQL_Developer_TNS_Import.png)

Al darle click en XE nos pedira ingresar nuestras credenciales de acceso a la base de datos. Usaremos el usuario por defecto `system` y la contraseña que seteamos durante la instalación de la BD. ![TNS Connection](img/SQL_Developer_TNS_Conn.png)

Finalmente probamos la ejecucion de una query en la BD XE al ejecutar la siguiente consulta `SELECT version FROM V$INSTANCE;`![SQL Execute](img/SQL_Developer_Exec.png)

## Instalación de Oracle Data Provider for .NET

Ingresaremos al link que esta en los requisitos. Desde aquí podemos elegir entre los 2 tipos de instalación que ofrece oracle (Xcopy y ODAC OUI).

Para el ejemplo eligiremos la version 64-bit ODAC OUI ![ODAC 19.3](img/ODAC_OUI_Download.png)

1. Al extraer el contenido del .zip ejecutaremos el archivo setup.exe para comenzar la instalación ![ODAC 19.3](img/ODAC_OUI_Setup.png)

2. Seleccionamos la ubicacion donde realizaremos la instalación del cliente de oracle ![ODAC 19.3](img/ODAC_OUI_Install_path.png)

3. Elegimos las librerias de .net que deseamos instalar ![ODAC 19.3](img/ODAC_OUI_Install_products.png)

4. Una vez selecionado todo lo necesario el instalador nos mostrar un resument de ello, procederemos a confirmar la instalación ![ODAC 19.3](img/ODAC_OUI_Install_Resume.png)

5. Cuando haya finalizado la instalación se mostrara la siguiente ventanda con el resumen de la instalación ![ODAC 19.3](img/ODAC_OUI_Install_finish.png)

**Importante:** *cuando actualicemos la configuración del archivo `TNSNAME.ora` de la ruta del home de la base de datos, tambien debemos actualizar en la instalación del clinete. Esta ruta es la ruta que configuramos al momento de instalar ODAC como muestra en la imagen final de la instalación*

## Instalación de SQL Developer Data Modeler

Esta herramienta nos permite crear la estructura de tablas de la base de datos de una manera más sencilla, parecido al diseñador de base de datos de SQL Server o de Mysql.

Al ingresar al link de descarga de los requisitos podemos elegir entre las 2 opciones que nos ofrece oralce. *Para este ejemplo hemos elegido la versiónn de **Windows 64-bit with JDK included.***

![Data Modeler](img/SQL_Developer_Download.png)

Ahora extraemos el contenido del archivo .zip en una ubicacion que sea de facil acceso. Por ejemplo en la raiz del disco `C:` ![Extract Files](img/Data_Modeler_Extract.png)

Vamos a ejecutar el programa mediante el archivo `datamodeler.exe`. Si es la primera ejecución nos preguntara si deseamos importar alguna configuración previa del programa ![Import config](img/Data_Modeler_Previus.png)

Al finalizar la carga tendremos la siguiente vista del programa ![Import config](img/Data_Modeler_Start.png)
