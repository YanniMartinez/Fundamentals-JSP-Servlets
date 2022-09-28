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