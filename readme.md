# Util

## Uso de directivas en JSP


## Importación de metodos

## Uso de JavaBean

Un javaBean no es más que la encapsulación de información independiente de objetos, usamos Beans para enviar o recibir información de forma sencilla.

Para poder hacer uso de un JavaBean dentro de un JSP es necesario declarar que lo usaremos primero, en el siguiente ejemplo podemos ver un panorama general de ello:
`<jsp:useBean id="user" class="org.ymartinezm.beans.User" scope="session"></jsp:useBean>`

La estructura base es se conforma de los siguientes componentes:
* `<jsp:useBean></jsp:useBean>`: Le indica a JSP que hará uso de un JavaBean
* `id=""`: Es el nombre con el que lo identificaremos dentro del JSP
* `class="org.ymartinezm.beans.User"`: Indica la clase del Bean con la ruta completa partiendo desde el package.
* `scope="session"`: Indica el alcance del uso, en este caso hace referencia a Sesion.

### Bean Scope Types
El scope afectará la visibilidad y disponibilidad de nuestro Bean:

* `session`: Sólo tendrá como alcance y visibilidad la sesión de un browser, es decir, si en un browser modificamos el valor a nivel sesión, entonces sólo se verá reflejado ahí, si abrimos otro browser notaremos los valores originales, porque los cambios sólo son a nivel sesión del browser. Esto quiere decir que se crean BEANS independientes por browser
* `application`: Afecta la aplicación entera, cuando creamos un bean coon este scope sólo será creado 1 y en base a el se realizaran las consultas y modificaciones dentro de la aplicación. Veremos que afectará todo sin importar en que browser lo consultemos, una vez aplicados los cambios del SetProperty estos se veran reflejados en todas las futuras consultas Get que realicemos.
* `page`:Sólo afecta a la página donde se está realizando la acción es decir, si cambiamos de página no veremos ningun impacto o modificación dentro de la información que queremos, para verla reflejada debemos modificarla y consultarla dentro de la misma página. Esto quiere decir que 1 único Bean es creado por página.
* `request`: Sólo se tiene el alcance por petición, es decir, si la cambiamos la información no se verá reflejada. Es decir, se crea un bean por cada petición. para verlo de una manera clara lo que podemos hacer es un Forward para que podamos verlo dado que seguirá formando parte de la petición. Recordemos que con el forward seguimos en el mismo URL pero despliega la información de otro JSP, es decir, sigue formando parte de la misma petición .


### Uso de GetProperty
Para poder obtener el valor de una propiedad podemos hacer uso del siguiente ejemplo, el cual obtendrá el valor de la propiedad **firstName**:
`<jsp:getProperty property="firstName" name="user"/> `

Su estructura se compone de los siguientes elementos:
* `<jsp:getProperty`: Especifica que obtendrá una propiedad
* `property="firstName"`: Indica la propiedad de la cual obtendrá el valor
* `name="user"`: Hace referencia al ID del bean declarado, en este caso User

### Uso de SetProperty
Para poder establecer el valor de una propiedad podemos hacer uso del siguiente ejemplo, el cual definirá el valor de la propiedad **firstName**:
`<jsp:setProperty property="firstName" name="user" value="Yanni"/>`

Su estructura se compone de los siguientes elementos:
* `<jsp:SetProperty`: Especifica el valor que dará a la propiedad
* `property="firstName"`: Indica la propiedad a la cual mapeará el valor
* `name="user"`: Hace referencia al ID del bean declarado, en este caso User
* `value="Yanni"`: Es el nuevo valor que adoptará la propiedad

### Uso de Beans en Formularios

Para poder tener una correspondencia 1 a 1 entre la información enviada y el Bean de java podemos hacer uso de la siguiente sentencia:
`<jsp:setProperty property="*" name="user"/>`

### Cookies
Se definen como un espacio de memoria dentro del navegador para un website específico.

Los cookies nos permiten generar elementos que sirven como un diccionario llave:valor, los cuales permiten tener una abstracción de perseverancia de diferentes niveles, además permite que cierta información no se pierda.
Para declarar una Cookie dentro de nuestro Servlet es tan sencillo como poner las siguientes declaraciones:

```
//Creación de Cookie, actuan como llave:valor
Cookie cUsername = new Cookie("username",username);
//Agregando la cookie
response.addCookie(cUsername);
```

Si quisieramos leer el contenido de una Cookie podemos emplear la siguiente sintaxis:
```
Cookie[] cookies= request.getCookies();
if(cookies != null){
    for(Cookie cookie: cookies){
        if(cookie.getName().equals("username")){
            username = cookie.getValue();
        }
        if(cookie.getName().equals("JSESSIONID")){
            sessionID=cookie.getValue();
        }
    }
}
```
Obtenemos valor con el siguiente elemento:
`cookie.getValue()`

**NOTA:** El uso de Cookies para administrar el inicio de sesión no es la mejor práctica es por ello que es mejor usar el session attribute.


Sí sólo quisieramos obtener las cookies podemos usar `request.getCookies();`

### Invalidar una sesion
Para llevar a cabo este proceso lo que podemos hacer es utilizar la siguiente sentencia: `request.getSession().invalidate();`

La siguiente sentencia retorna la sesion actual, si no existe entonces la asocia con la petición la cual retorna una nueva petición: `request.getSession(true)`


### Encode URL
Para codificar la URL podemos usar la siguiente sentencia: `response.encodeURL()`

### Filtros Servlet
Un filtro a rasgos generales es un archivo de JAVA. Dentro de este archivo el método más importante es el **doFilter**, podemos identificar rápidamente que se trata de un filtro gracias al siguiente decorador: `@WebFilter("/MemberAreaFilter")` en este path debemos poner el mismo path sobre el que queremos aplicar alguna especie de filtro.




# JSTL
Son etiquetas que se recomiendan para usar en vez de usar Scriplets o lógica dentro de estos elementos. Para conocer más detalles refiera a la [Documentación oficial](https://docs.oracle.com/javaee/5/tutorial/doc/bnake.html).
En general las JSTL se pueden agrupar en 5 categorias: Core, XML, I18N, Database y Functions

Las etiquetas de Database no están recomendadas para ser usadas dentro de vistas, es por ello que es mejor no hacer uso de ellas.
Para hacer uso de JSTL podemos hacer uso de Maven o difectamente descargar el JarFile de la siguiente [ruta](https://mvnrepository.com/artifact/jstl/jstl/1.2) 

## Como importar las tags de JSTL

* Core Tags

    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>

* Formatting Tags

    <%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>

* SQL Tags

    <%@ taglib prefix = "sql" uri = "http://java.sun.com/jsp/jstl/sql" %>

* XML tags

    <%@ taglib prefix = "x" uri = "http://java.sun.com/jsp/jstl/xml" %>

* JSTL Functions

    <%@ taglib prefix = "fn" uri = "http://java.sun.com/jsp/jstl/functions" %>


## Como usar TagLibs
Una vez que hayamos importado una biblioteca como la siguiente:
`<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>`

Es sencillo interpretarlo, lo que decimos es que estamos importando una library y el prefijo para su uso será **c**, es decir, corresponde al siguiente fragmento declarado: `prefix = "c"`

Tras importar podemos encontrar todo lo que se encuentra contenido en `<c:>`, por ejemplo lo siguientes casos:

```
//Hace referencia a que hará un set a una variable llamada NAME y el valor será YANN:
<c:set var="name" value="Yann"></c:set>

//Hace referencia a que mandará a la salida el valor de la variable NAME
<c:out value="name"></c:out>
```

Dentro de JSTL podemos hacer uso del lenguaje de expresiones como el siguiente caso:

```
<!-- Usando lenguaje de expresión: -->
<c:out value="${name}"></c:out>

<!-- Otra manera de imprimir el valor por lenguaje de expresion es la siguiente -->
${name}
```

* Cómo liberar espacio en memoria que usa una variable:
    ```
    <!-- Liberando memoria usada por una variable -->
	<c:remove var="name"/>
	<!-- Nunca se imprimirá porque no existe la variable -->
	${name}
    ```

* Como mostrar o usar el valor de un parametro proveniente de un URL:
    ```
    <!-- Forma de imprimir el valor de un parametro por URL llamado msg, basarnos
	en el siguiente ejemplo: 
	http://localhost:8080/S05L02_-_JSTL_Set_and_remove_Tags/JSTLDemo.jsp?msg=HelloWorld 
	Notese que imprime el valor del parametro llamado msg-->
	${param.msg}
    ```

## Implicit objects
Para consultar todo el listado de [Objetos implicitos click aquí](https://studyeasy.org/general/implicit-objects/)
Con estos objetos implicitos podemos extraer información.

### Información proveniente de un Java Bean
```
<jsp:useBean id="user" class="org.ymartinezm.beans.User" scope="page"></jsp:useBean>
<!-- Imprimiendo el valor de un atributo de nuestro Bean con lenguaje de expresion -->
${user.getFirstName()}
<!-- También podemos llamar atributos -->
${user.fistName}
${user.lastName}

<!-- También podemos hacer uso de la tag c:out -->
<c:out value="${user.firstName}"></c:out>
```

### Realizar condicionales dentro de JSTL
Para poder realizar una condición es tan sencilla como incluir la siguiente tag:
`<c:if test="${param.name == 'Yann'}"></c:if>`. Donde **test** es mandatorio y ahí irá la sentencia a evaluar, dentro de ella podemos poner lógica o objetos implicitos.
**NOTA:** Recordemos que se recomienda usar lógica de negocio fuera de las vistas.

### Choose y When tags
Para hacer uso de esta lógica es tan sencillo como poner la siguiente sintaxis:
```
<c:choose>
	
    <c:when test="${ }"></c:when>
    <c:when test="${ }"></c:when>
    <c:when test="${ }"></c:when>

</c:choose>
```

Notaremos que dentro del When tenemos un elementos parecido al de nuestro if llamado **test** ahí dentro irá la sentencia a evaluar.

Para considerar todos los casos diferentes podemos utilizar la siguiente etiqueta:
```
<%-- Este es el caso ideal para considerar todos los demás
casos --%>
<c:otherwise>
    Learning something Good!
</c:otherwise>
```

