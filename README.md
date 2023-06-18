# Prueba Ceiba

## Estructura de Capas

El proyecto sigue una estructura de capas para una mejor organización y separación de responsabilidades. A continuación se describe cada capa:

- **Presentation Layer**: Contiene las pantallas y widgets visuales de la aplicación. Es responsable de la interfaz de usuario y la interacción con el usuario.
- **Data Layer**: Gestiona los datos de la aplicación, incluyendo la obtención de datos desde una API externa y el almacenamiento local. Incluye las clases `UserApi` y `UserRepository` para la obtención de usuarios.
- **Model Layer**: Define los modelos de datos utilizados en la aplicación, como `User` y `Post`.

## Funcionamiento de la Aplicación

La aplicación muestra una lista de usuarios obtenida desde una API externa. Los usuarios se filtran según un criterio de búsqueda ingresado por el usuario en un campo de texto. Al hacer clic en un usuario, se muestra una lista de publicaciones asociadas a ese usuario.

El flujo de trabajo es el siguiente:

1. La aplicación se inicia y muestra la lista de usuarios.
2. Los usuarios se obtienen desde la API utilizando el `UserRepository`. Si hay datos almacenados localmente, se cargan los datos guardados en lugar de hacer una llamada a la API.
3. Si no hay datos almacenados localmente o se requiere una actualización, se realiza una solicitud a la API y se guardan los datos en el almacenamiento local para su uso futuro.
4. Los usuarios se muestran en la lista y se pueden filtrar mediante el campo de búsqueda.
5. Al hacer clic en un usuario, se muestra la lista de publicaciones asociadas a ese usuario. Si hay datos almacenados localmente, se cargan los datos guardados en lugar de hacer una llamada a la API.
6. Si no hay datos almacenados localmente o se requiere una actualización, se realiza una solicitud a la API y se guardan los datos en el almacenamiento local para su uso futuro.
7. Las publicaciones se muestran en la lista.

## Requisitos del Sistema

- Flutter SDK
- Dependencias especificadas en el archivo `pubspec.yaml`

## Configuración del Proyecto

1. Clona el repositorio en tu máquina local.
2. Instala las dependencias especificadas en el archivo `pubspec.yaml` ejecutando el comando `flutter pub get`.
3. Ejecuta la aplicación en un emulador o dispositivo utilizando el comando `flutter run`.

## Contribuciones

Las contribuciones son bienvenidas. Si encuentras un error o tienes alguna mejora para el proyecto, no dudes en crear un _pull request_ o abrir un _issue_.

## Licencia

Este proyecto está bajo la Licencia [MIT](LICENSE).
