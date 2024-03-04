Algoritmo sistema_costo
	// variables envio
	Definir costoFinal,envio_costo, envio_peso, envio_costoporpeso,envio_opcionzona Como Real
	Definir envio_opcion , envio_destino Como Caracter
	
	//variables valor, descuentos y totales
	Definir precioOriginal,cantidadProductos, descuento, subtotal Como Entero
	Definir descuentoCantidad,iva,precioConDescuento, TotalAPagar Como Real
    Definir cuponDescuento Como Caracter
	definir des_cantidad Como Caracter
	
	
    Escribir "Ingrese el precio del producto: "
    Leer precioOriginal
	Escribir "Ingrese la cantidad de productos: "
    Leer cantidadProductos
    
    Si cantidadProductos > 3 Entonces
		
	    descuentoCantidad = precioOriginal * .10
        precioConDescuento = precioOriginal - descuentoCantidad
		Escribir " descuento por mayor "
		subtotal = precioConDescuento * cantidadProductos
		des_cantidad = "  descuento por mayor"
	SiNo
		Escribir "sin descuento"
		precioConDescuento = precioOriginal * cantidadProductos
		descuentoCantidad = precioOriginal
		subtotal = precioOriginal * cantidadProductos
		des_cantidad = "  sin descuento"
    FinSi
	
	
	Escribir "   Producto x $ ", precioOriginal, "  Cantidad:  ", cantidadProductos, "  Subtotal:  ",  subtotal
	
	Escribir "               "
    Escribir "�Tiene un cup�n de descuento? (S/N): "
    Leer cuponDescuento
    
    Si cuponDescuento = "S" O cuponDescuento = "s" Entonces
        Escribir "Ingrese el porcentaje de descuento: "
        Leer descuento 
		
        precioConDescuento = subtotal - (subtotal * descuento / 100)
    Sino
		
        precioConDescuento = subtotal
    FinSi
	
	// envio 
	Escribir "�Desea retirar en tienda? (S/N): "
	Leer envio_opcion 
	Si envio_opcion = "S" O envio_opcion = "s" Entonces
        Escribir "Usted ha elegido retirar en tienda."
        envio_costo = 0
    Sino
        Escribir "Elija un destino de env�o:"
        Escribir "1. Zona Norte"
        Escribir "2. Zona Centro"
        Escribir "3. Zona Sur"
        Escribir "Ingrese el n�mero de la opci�n: "
        Leer envio_opcionzona
        
        Si envio_opcionzona = 1 Entonces
            envio_destino = " Zona Norte"
            envio_costo = 5600
			Escribir " Usted ha elegido enviar a ", envio_destino, "."
        Sino
            Si envio_opcionzona = 2 Entonces
                envio_destino = " Zona Centro"
                envio_costo = 2500
				Escribir " Usted ha elegido enviar a  ", envio_destino, "."
            Sino
                Si envio_opcionzona = 3 Entonces
                    envio_destino = " Zona Sur"
                    envio_costo = 6500
					Escribir " Usted ha elegido enviar a ", envio_destino, "."
                Sino
                    Escribir " Opci�n no v�lida."
					
                FinSi
            FinSi
        FinSi
        Escribir "Ingrese el peso del paquete en kilos: "
		Leer envio_peso
		
		envio_costoporpeso = envio_peso * 0.02
		
        
    FinSi
	
	TotalAPagar = precioConDescuento + envio_costo
	
	// Costo final de la compra
   iva = (TotalAPagar * .19)
   costoFinal = (TotalAPagar + iva)
    
    Escribir "Precio del producto: $", precioOriginal
	Escribir "Precio con descuento por Cantidad: $", subtotal, des_cantidad
    Escribir "Precio con cupon de ", descuento, "% descuento: $", precioConDescuento
	Escribir "Costo de env�o: $", envio_costo
    Escribir "IVA (19%): $", iva
    Escribir "Costo Final: $", costoFinal
FinAlgoritmo
