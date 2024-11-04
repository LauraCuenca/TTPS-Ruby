### ``` Investigá un poco sobre Semantic Versioning (o SemVer). ¿Qué finalidad tiene? ¿Cómo se compone una versión? ¿Ante qué situaciones debería cambiarse cada una de sus partes? ```

Semantic Versioning (SemVer) es un sistema de control de versiones que proporciona un marco claro para la gestión de versiones de software, facilitando la comunicación sobre cambios y la compatibilidad entre versiones.

#### Finalidad
La finalidad de SemVer es permitir que los desarrolladores comprendan rápidamente la naturaleza de los cambios en una versión nueva y cómo estos afectan la compatibilidad con versiones anteriores. Esto ayuda a evitar problemas en la integración de dependencias en proyectos de software.

#### Composición de una versión
Una versión en SemVer se compone de tres partes:

MAJOR (X.y.z): Incrementa cuando se realizan cambios incompatibles en la API.
MINOR (x.Y.z): Incrementa cuando se añaden funcionalidades de manera compatible con versiones anteriores.
PATCH (x.y.Z): Incrementa cuando se realizan correcciones de errores compatibles con versiones anteriores.