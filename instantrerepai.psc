Algoritmo InstaRepairs
	Definir ZonaNorte, ZonaSur, ZonaEste, ZonaOeste, PrecioTotal como Entero
    Definir PrecioZonaSur1, PrecioZonaSur2, PrecioZonaSur3, PrecioZonaSur4 como Real
    Definir PrecioZonaNorte1, PrecioZonaNorte2, PrecioZonaNorte3 como Real
    Definir PrecioZonaOeste1, PrecioZonaOeste2 como Real
    Definir PrecioZonaEste1, PrecioZonaEste2, PrecioZonaEste3 como Real
	
	PrecioZonaSur1<-3400
	PrecioZonaSur2<-2500
	PrecioZonaSur3<-2000
	PrecioZonaSur4<-3400
	
	PrecioZonaNorte1<-1500
	PrecioZonaNorte2<-2400
	PrecioZonaNorte3<-3000
	
	PrecioZonaOeste1<-2000
	PrecioZonaOeste2<-6000
	
	PrecioZonaEste1<-2000
	PrecioZonaEste2<-2400
	PrecioZonaEste3<-6000
	
	ZonaNorte<-0
	ZonaSur<-0
	ZonaEste<-0
	ZonaOeste<-0
	PrecioTotal<-0+ Zona 

	
    Repetir
        
        Limpiar Pantalla
        Escribir " Bienvenido a INSTANT REPAIRS"
        Escribir " El sitio donde encontraras los mejores trabajadores en tu ZONA"
        Escribir "              1. zona sur"
        Escribir "              2. zona norte"
        Escribir "              3. zona este"
        Escribir "              4. zona oeste"
        Escribir "              0. Salir"
        Escribir " "
        Escribir "Elegi tu zona! (0-4): "
        Leer zona
		
        Si (zona = 1) Entonces
            Repetir
                Escribir "ZONA SUR :"
                Escribir " 1 RAUL 3KM $3400"
                Escribir " 2 MARIA 4,5KM $2500 "
                Escribir " 3 LUCILA 3,5KM $2000"
                Escribir " 4 RICARDO$3400"
                Escribir " 0 <<< volver al menu principal"
                Leer opc
                Si (opc >= 0 y opc <= 4) Entonces
                    Si (opc > 0) Entonces
                        Escribir "que servicio desea"
                        Leer cual
                        ZonaSur <- ZonaSur + cual
                        PrecioTotal <- PrecioTotal + (cual * PrecioZonaSur1)
                    FinSi
                Sino
                    Escribir "Opción inválida. Por favor, elija una opción válida"
                    Esperar Tecla
                FinSi
            Hasta Que opc = 0
        FinSi
        Si (OP = 2) Entonces
            Repetir
                Escribir "Zona Norte"
                Escribir " 1 Lucas 1,5KM $1500"
                Escribir " 2 Cesar 5,5km $2400"
                Escribir " 3 Zahira 3,5 km $3000"
                Escribir " 0 <<< volver al menu principal"
                Leer opc
                Si (opc >= 0 y opc <= 3) Entonces
                    Si (opc > 0) Entonces
                        Escribir "Que servicio desea"
                        Leer cual
                        ZonaNorte <- ZonaNorte + cual
                        PrecioTotal <- PrecioTotal + (cual *PrecioZonaNorte1)
                    FinSi
                Sino
                    Escribir "Opción inválida. Por favor, elija una opción válida"
                    Esperar Tecla
                FinSi
            Hasta Que opc = 0
        FinSi
        Si (OP = 3) Entonces
            Repetir
                Escribir "Zona oeste"
                Escribir " 1 Ricardo 6,5 KM$2000"
                Escribir " 2 Esther 4km $6000"
                Escribir " 0 <<< volver al menu principal"
                Leer opc
                Si (opc >= 0 y opc <= 2) Entonces
                    Si (opc > 0) Entonces
                        Escribir "Que servicio desea "
                        Leer cuantos
                        ZonaOeste <- ZonaOeste + cual
                        PrecioTotal <- PrecioTotal + (cual * PrecioZonaOeste1)
                    FinSi
                Sino
                    Escribir "Opción inválida. Por favor, elija una opción válida"
                    Esperar Tecla
                FinSi
            Hasta Que opc = 0
        FinSi
        Si (OP = 4) Entonces
            Repetir
                Escribir "zona Este "
                Escribir " 1 Sara 4,5 km $2000"
                Escribir " 2 Gabriel 3km $2400"
                Escribir " 3 Roxana 1km $6000"
                Escribir " 0 <<<volver al menu principal"
                Leer opc
                Si (opc >= 0 y opc <= 3) Entonces
                    Si (opc > 0) Entonces
                        Escribir "Que servicio Desea"
                        Leer cual
                        ZonaEste <- ZonaEste + cual
                        PrecioTotal <- PrecioTotal + (cual * PrecioZonaEste1)
                    FinSi
                Sino
                    Escribir "Opción inválida. Por favor, elija una opción válida"
                    Esperar Tecla
                FinSi
            Hasta Que opc = 0
        FinSi
        
        
        Si (OP = 0) Entonces
            Escribir "¿Desea contratar el servicio con la compra? (Si o No): "
            Leer respuesta
            Si respuesta = "Si" o respuesta = "no" Entonces
                Escribir "   Gracias por contratar nuestros servicos"
                Escribir "           instant repairs"
				
                Escribir "Opciones de pago:"
                Escribir "1 Efectivo ."
                Escribir "2 Tarjeta de crédito."
                Leer opPago
				
                precioTotal <- precioTotal - descuento + aumento
				
                Escribir "Total a pagar: ", precioTotal
            FinSi
        FinSi
    Hasta Que OP = 0
	
    PrecioTotal <- ZonaSur + ZonaNorte + ZonaEste+ ZonaOeste 
	
    Escribir "Total a pagar: $", precioTotal
FinAlgoritmo
