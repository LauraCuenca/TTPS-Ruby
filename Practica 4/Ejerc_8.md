### ```Sobre routing:```
`1. ¿Dónde se definen las rutas de la app Rails?`
Las rutas de una aplicación Rails se definen en el archivo config/routes.rb. Este archivo es donde se mapean las URL de la aplicación a las acciones de los controladores correspondientes.

`2. ¿De qué formas se pueden definir las rutas? Investigá la DSL para definición de rutas que Ruby on Rails provee.`
Rails ofrece una DSL (Domain Specific Language) muy flexible para definir rutas. 
Algunas formas de definir rutas son:
Ruta básica: Mapea una URL específica a un controlador y una acción.
`get '/about', to: 'pages#about'`

Ruta con parámetros: Permite capturar valores dinámicos de la URL.
`get '/articles/:id', to: 'articles#show'`

`3. ¿Qué ruta(s) agregó el generator que usaste en el último inciso del punto anterior?`
El generator que use para crear el PoliteController y la acción salute probablemente haya agregado una ruta como esta:
get '/polite/salute', to: 'polite#salute'

`4. ¿Con qué comando podés consultar todas las rutas definidas en tu aplicación Rails?`
rails routes

`5. Modificá el mapeo de rutas de tu aplicación para que al acceder a / (root) se acceda al controlador definido antes (polite#salute).`