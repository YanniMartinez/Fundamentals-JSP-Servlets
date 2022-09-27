# Util

## Uso de directivas en JSP


## Importación de metodos

## Uso de JavaBean
Para poder hacer uso de un JavaBean dentro de un JSP es necesario declarar que lo usaremos primero, en el siguiente ejemplo podemos ver un panorama general de ello:
`<jsp:useBean id="user" class="org.ymartinezm.beans.User" scope="session"></jsp:useBean>`

La estructura base es se conforma de los siguientes componentes:
* `<jsp:useBean></jsp:useBean>`: Le indica a JSP que hará uso de un JavaBean
* `id=""`: Es el nombre con el que lo identificaremos dentro del JSP
* `class="org.ymartinezm.beans.User"`: Indica la clase del Bean con la ruta completa partiendo desde el package.
* `scope="session"`: Indica el alcance del uso, en este caso hace referencia a Sesion.

### Scope
El scope afectará la visibilidad y disponibilidad de nuestro Bean:

* `session`: Sólo tendrá como alcance y visibilidad la sesión de un browser, es decir, si en un browser modificamos el valor a nivel sesión, entonces sólo se verá reflejado ahí, si abrimos otro browser notaremos los valores originales, porque los cambios sólo son a nivel sesión del browser. Esto quiere decir que se crean BEANS independientes por browser


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