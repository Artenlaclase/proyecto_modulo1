Algoritmo sistema_costo
	Definir  costoFinal Como real
	Definir precioOriginal,cantidadProductos, descuento Como Entero
	Definir precioConDescuento, descuentoCantidad , iva Como Real
    Definir cuponDescuento Como Caracter
    Escribir "Ingrese el precio del producto: "
    Leer precioOriginal
    
    Escribir "¿Tiene un cupón de descuento? (S/N): "
    Leer cuponDescuento
    
    Si cuponDescuento = "S" O cuponDescuento = "s" Entonces
        Escribir "Ingrese el porcentaje de descuento: "
        Leer descuento; Escribir "  %"
		
        precioConDescuento = precioOriginal - (precioOriginal * descuento / 100)
    Sino
		
        precioConDescuento = precioOriginal
    FinSi
	
    Escribir "Ingrese la cantidad de productos: "
    Leer cantidadProductos
    
    Si cantidadProductos > 3 Entonces
        descuentoCantidad = precioConDescuento * 0.10
        precioConDescuento = precioConDescuento - descuentoCantidad
	SiNo
		Escribir "sin descuento"
		precioConDescuento = precioOriginal * cantidadProductos
		descuentoCantidad = precioOriginal
		
		
    FinSi
    iva = precioConDescuento * 0.19
    costoFinal = precioConDescuento + iva
    
    Escribir "Precio: $", precioOriginal
    Escribir "Precio con descuento cupon: $", precioConDescuento
	Escribir "Precio por descuento por Cantidad: $", descuentoCantidad
    Escribir "IVA (19%): $", iva
    Escribir "Costo Final: $", costoFinal
FinAlgoritmo
