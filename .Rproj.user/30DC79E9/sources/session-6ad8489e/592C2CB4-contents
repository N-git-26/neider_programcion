area_circ <- funcion(radio)[
  (radio*radio*pi)
]
area_circ("10")
# Crear una función para convertir entre unidades
convertir_unidades <- function(valor, desde, a) {
  # Convertir todas las unidades a una unidad base (metros para longitudes, gramos para masas)
  
  # Definir las conversiones a la unidad base
  conversiones <- list(
    longitud = c(metros = 1, kilometros = 1000, millas = 1609.34, pulgadas = 0.0254),
    masa = c(gramos = 1, kilogramos = 1000, libras = 453.592)
  )
  
  # Comprobar el tipo de unidad
  tipo_unidad <- NULL
  if (desde %in% names(conversiones$longitud) & a %in% names(conversiones$longitud)) {
    tipo_unidad <- "longitud"
  } else if (desde %in% names(conversiones$masa) & a %in% names(conversiones$masa)) {
    tipo_unidad <- "masa"
  } else {
    stop("Unidades no reconocidas o incompatibles")
  }
  
  # Convertir el valor a la unidad base
  valor_base <- valor * conversiones[[tipo_unidad]][[desde]]
  
  # Convertir el valor desde la unidad base a la unidad deseada
  valor_convertido <- valor_base / conversiones[[tipo_unidad]][[a]]
  
  return(valor_convertido)
}

# Ejemplo de uso
# Convertir 5 kilómetros a metros
convertir_unidades(5, "kilometros", "metros")  # Devuelve 5000

# Convertir 1000 gramos a kilogramos
convertir_unidades(1000, "gramos", "kilogramos")  # Devuelve 1

