

## example

TODO

Conceptos vistos en la materia :

Polimorfismo : 

Se utiliza en la parte de Abonos para la vista del Asistente mas especificamente en los metodos : calcularPrecio() y bonificar()

Tanto como el objeto AbonoFan como cualquier instancia de AbonoVIP, entienden estos dos mensajes actuando de manera diferente.

Composición : 

Se utiliza en la parte de Asistente, con su tipo de Abono. En vez de tener una clase por cada tipo de abono de asistente. Se tiene un atributo en la clase asistente que va a permitir cambiar de tipo de abono en tiempo de ejecución sin necesidad de reinstanciar la clase.

Herencia :

Se utiliza en la clase Banda simplifica los atributos y comportamientos comunes de las bandas en general y declara algunos métodos abstarctos que obligan a las subclases a definirlos.

Encapsulamiento :

Se utiliza en el historial de entradas del asistente. El asistente expone consultas de como cantidadEntradasCompradas() en vez de devolver la lista para que los terceros la manipulen.

Responsabilidad :

Se utiliza en la correcta separacion de responnsabilidades, Por ejemplo:
	Entrada : Sabe su fecha, conoce a que banda corresponde y calcula su propio precio con impuestos
	Asistente : Gestiona su billetera, registra compras y responde sobre sus gastos