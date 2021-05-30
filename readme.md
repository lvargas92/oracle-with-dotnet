# INICIAR PROYECTOS .NET CON ORACLE

Vamos a explicar cómo podemos iniciar un proyecto base con C#. y Oracle DB XE.

## Requisitos

- Oracle Database XE. [Ver Instalación](OracleDBXE/readme.md)
- Oracle Data Provider for .NET [Ver Instalación](ODAC/readme.md)
- SQL Developer (Opcional). [Ver Instalación](SQL_Developer/readme.md)
- SQL Developer Data Modeler (Opcional). [Ver Instalación](SQL_DataModeler/readme.md)
- [VS 2019 community](https://visualstudio.microsoft.com/es/vs/community/)

*Las Herramientas de gestor de base de datos y modelado que brinda oracle son gratuitas.*

## Resumen

- [Modelo de Datos](#modelo-de-datos)
- [Base de Datos](#base-de-datos)
- [Creación del proyecto](#conexión-con-.net)

## Modelo de Datos

Usaremos Sql Data Modeles para el diseño de las tablas de base de datos. Abrimos la aplicación y nos ubicaremos dentro de la pestaña *Relational* para poder crear las tablas de nuestra BD.

En la barra de Herramientas seleccionamos el control de *Nueva Tabla* y luego hacemos click dentro del área en blanco de la pestaña "Relational" ![Nueva Tabla](img/DM_NewTable.png)

La primera vista nos permite detallar la información general de la tabla ![Tabla General](img/DM_NewTable_Data.png)

En la segunda vista podemos agrega los atributos que tendra nuestra tabla y el tipo de datos que tendra cada atributo. Para este caso sólo usaremos atributos del tipo Lógico ![Tabla Atributos](img/DM_NewTable_Attrib.png)

En el caso que sea necesario realacionar las tablas podemos hacerlo metiante el icono de nueva relación. ![Tabla Relacion](img/DM_Table_Create.png)

Debemos selecionar la tabla de origen y la de destino para poder enviar la clave foranea a las tablas correctamente. ![Tabla Relacion](img/DM_Table_Relation.png)

Una vez diseñado todas las tablas a utilizar podemos generar una vista previa del código DDL de las tablas generadas seleccionando las tablas y haciendo click derecho sobre una de ellas para elegir la opcion *Vista Previa DDL* ![DDL Preview](img/DM_Table_DDL.png)

El programa nos brindara el código DDL para la creación de las tablas y sus relaciones según el diseño que hemos hecho de las tablas.
![DDL Preview](img/DM_Table_DDL_View.png)

## Base de Datos

## Conexión con .Net
