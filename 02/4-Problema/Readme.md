4. **Problema propuesto** 
   
Roxs es la líder de un equipo de trabajo para una compañía que realiza Auditorías Externas. Él ha creado un archivo llamado *Lista_Precios* en su directorio `/home`. El archivo es altamente confidencial, pero resulta que existe un alto riesgo de que su archivo  sea  vulnerado  porque  otros  empleados  utilizan  su  equipo  al  finalizar  su turno.   Actualmente,   Roxs   posee   una   contraseña   segura,   pero   él   necesita resguardar los datos de ese archivo y no desea que nadie más que solamente él tenga acceso al mismo. ¿Qué solución le propondrían como equipo a Roxs? 

>**Considere lo siguiente para solucionar el problema.** 
>
>Para  proveer  una  solución  apropiada  para  restringir  accesos  no autorizados  al archivo, se necesita realizar lo siguiente: 
>
>1. Identificar las medidas de seguridad a implementarse. 
>2. Identificar el tipo de usuarios para quienes los permisos >serán cambiados. 
>3. Identificar el tipo de permiso que necesita ser cambiado.
>4. Verificar los permisos de acceso al archivo.


Entregable, crear un Readme.md con la solución al Problema propuesto


# Resolución del Problema

De acuerdo a las necesidad de securizar el documento debido a la información confidencial que existe y de que el equipo es usado por varios con su respectiva cuenta, se necesita hacer los siguientes aspectos.

- Revisión de permisos del directorio del usuario, ya que el directorio originalmente puede estar en modo lectura por defecto para otros usuarios, para ellos se hace inspección del contenido

```
ls -lhR /home
```

- Se indentifica que por defecto los archivos tienen permisos de lectura para todos, al igual para los grupos, por consiguiente es necesario cambiar estas propiedades para que el documento quede protegido totalmente de todos.

```
-rw-r--r-- Rosx Rosx /home/Roxs/Lista_Precios
```

- Tomando en cuenta que la cuenta de Roxs esta protegida por medio de contraseña, se determina que solo ella tiene acceso al documento en su directorio personal, por lo que con ello podemos realizar unos ajustes a su directorio y documento para protegerlo

```
chmod o-r -R /home/Rosx
```
>De esta manera damos una protección extra al directorio personal de Rosx donde solo ella podra ver el contenido de sus documentos, a menos que ella desee agregar algún otro usuario como miembro de su grupo de usuario para acceder a los datos.

- Ahora vamos a limitar el uso del documento que se hace relación para dejarlo solo para uso exclusivo total de Rosx

```
chmod u+rw,go-wxr /home/Roxs/Lista_Precios
```
>De esta manera el archivos solo quedará de uso exclusivo para el usuario Roxs, donde ella solo podrá leer y escribir sobre el documento, los demás usuarios no podrán tener acceso y tener un mensaje de alerta indicando que no pueden acceder a él.


- Luego vamos asegurarnos que los permisos establecidos hayan sido correctos, por ellos hacemos un listado de los directorios y archivos para verificar sus permisos.

```
 ls -lhR /home
```

