# Be sure to restart your server when you modify this file.

# Add new inflection rules using the following format. Inflections
# are locale specific, and you may define rules for as many different
# locales as you wish. All of these examples are active by default:

ActiveSupport::Inflector.inflections(:es) do |inflect|
  inflect.plural /([lnr])$/i, '\1es'  # Agrega "es" a las palabras que terminan en l, n, r
  inflect.singular /([lnr])es$/i, '\1' # Elimina "es" para devolver la forma singular
end

# These inflection rules are supported but not enabled by default:
# ActiveSupport::Inflector.inflections(:en) do |inflect|
#   inflect.acronym "RESTful"
# end
