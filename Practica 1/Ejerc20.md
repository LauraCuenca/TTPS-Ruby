
   ### ```. Investigá qué métodos provee Ruby para:```

   ## Obtener la lista de ancestros (superclases) de una clase
   
   ``` class MiClase
    end

    puts MiClase.ancestors ```

   ## Conocer la lista de métodos de una clase
   ```class MiClase
      def metodo1; end
      def metodo2; end
      end

     puts MiClase.methods - Object.methods # Para excluir métodos heredados de Object```
  

  ## Conocer la lista de métodos de instancia de una clase
  ## Conocer las variables de instancia de una clase
  ## Obtener el valor de una variable de instancia de un objeto (sin utilizar un método generado con attr_reader o similar)
  ## Establecer el valor de una variable de instancia de un objeto (sin utilizar un método generado con attr_writer o similar)