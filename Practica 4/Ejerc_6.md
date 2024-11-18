### ```Sobre los initializers:```
`1. ¿Qué son y para qué se utilizan?`
Los initializers en Rails son archivos Ruby que se encuentran en la carpeta config/initializers. Estos archivos se ejecutan al inicio de la aplicación, durante el proceso de arranque del servidor. Los initializers se utilizan para configurar diversas partes del sistema o inicializar recursos, bibliotecas y componentes antes de que se cargue la aplicación. Son útiles para establecer configuraciones predeterminadas o inicializar objetos globales que la aplicación necesita durante su ciclo de vida.

`2. ¿En qué momento de la vida de la aplicación se ejecutan?`
Los initializers se ejecutan al arrancar la aplicación, justo después de cargar el entorno y antes de que Rails cargue sus componentes principales (como controladores, modelos, etc.).

`3. Si tu app está corriendo y modificás algún initializer, ¿los cambios se reflejan automáticamente? ¿Por qué?`
 Los cambios en los initializers no se reflejan automáticamente si la aplicación ya está corriendo. Esto se debe a que los initializers solo se ejecutan una vez cuando se arranca el servidor de Rails. Si modificas un initializer mientras la aplicación está en funcionamiento, necesitarás reiniciar el servidor para que los cambios se apliquen.

`4. Creá un initializer en tu aplicación que imprima en pantalla el string "Bootingpractica_rails :)". ¿En qué momento se visualiza este mensaje?`
Cuando ejecute rails server