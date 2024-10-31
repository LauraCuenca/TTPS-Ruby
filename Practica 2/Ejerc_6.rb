class Usuario
  attr_accessor :usuario, :clave, :email, :rol

  def initialize(usuario, clave, email, rol)
    @usuario = usuario
    @clave = clave
    @email = email
    @rol = rol
  end

  def puede_ver?(documento)
    false
  end

  def puede_modificar?(documento)
    false
  end

  def puede_borrar?(documento)
    false
  end
end

class Lector < Usuario
  def puede_ver?(documento)
    documento.publico
  end
end

class Redactor < Usuario
  def puede_ver?(documento)
    documento.publico
  end

  def puede_modificar?(documento)
    documento.creador == self && !documento.borrado
  end
end

class Director < Usuario
  def puede_ver?(documento)
    true
  end

  def puede_modificar?(documento)
    !documento.borrado && documento.creador != self
  end
end

class Administrador < Director
  def puede_borrar?(documento)
    true
  end
end

class Documento
  attr_accessor :creador, :contenido, :publico, :borrado

  def initialize(usuario, publico = true, contenido = '')
    self.creador = usuario
    self.publico = publico
    self.contenido = contenido
    self.borrado = false
  end

  def borrar
    self.borrado = true
  end

  def puede_ser_visto_por?(usuario)
    usuario.puede_ver?(self)
  end

  def puede_ser_modificado_por?(usuario)
    usuario.puede_modificar?(self)
  end

  def puede_ser_borrado_por?(usuario)
    usuario.puede_borrar?(self)
  end
end

lector = Lector.new('lector1', 'clave123', 'lector@example.com', 'Lector')
redactor = Redactor.new('redactor1', 'clave456', 'redactor@example.com', 'Redactor')
director = Director.new('director1', 'clave789', 'director@example.com', 'Director')
admin = Administrador.new('admin1', 'clave000', 'admin@example.com', 'Administrador')

doc1 = Documento.new(redactor, true, 'Contenido público')
doc2 = Documento.new(redactor, false, 'Contenido privado')

puts lector.puede_ver?(doc1)   # true
puts lector.puede_ver?(doc2)   # false
puts redactor.puede_modificar?(doc1) # true
puts redactor.puede_modificar?(doc2) # true
puts director.puede_modificar?(doc2) # true
puts admin.puede_borrar?(doc1) # true
doc1.borrar
puts admin.puede_borrar?(doc1) # true (ahora puede borrarlo)