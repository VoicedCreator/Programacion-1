// Nombre del archivo: imc_validacion.psc
// Descripción: Imprime el IMC del usuario y le muestra su categoría de peso.
// Autor: Ossiel Lizarraga Jiménez, Ricardo Medina Córdova
// Fecha: 25/08/2026
Algoritmo imc_validacion
	Definir imc, peso, altura Como Real
	Definir edad Como Entero
	
	Escribir "Introduzca su edad:"
	Leer edad
	
	// Al leer la edad, verificamos si el usuario cumple con el requisito
	// de tener 20 años como mínimo, utilizando la condicional Si Entonces.
	Si (edad >= 20) Entonces
		Escribir "Ingrese peso en kg:"
		Leer peso
		Escribir "Ingrese altura en metros:"
		Leer altura
		
		// Con la información de la altura y el peso, verificamos que ambos
		// valores sean mayores que 0 para poder realizar la fórmula correctamente.
		Si (altura > 0 Y peso > 0) Entonces
			imc <- peso / (altura * altura)
			Escribir "Tu IMC es: ", imc
			
			// Cada Si Entonces verifica si el IMC cumple con el rango de una
			// categoría de peso. Según el resultado, el sistema muestra la
			// categoría correspondiente, desde bajo peso severo hasta obesidad
			// tipo III (mórbida).
			Si (imc < 16.5) Entonces
				Escribir "Bajo peso severo"
			FinSi
			Si (imc >= 16.5 Y imc < 18.5) Entonces
				Escribir "Bajo peso"
			FinSi
			Si (imc >= 18.5 Y imc < 25) Entonces
				Escribir "Saludable"
			FinSi
			Si (imc >= 25 Y imc < 30) Entonces
				Escribir "Sobrepeso"
			FinSi
			Si (imc >= 30 Y imc < 35) Entonces
				Escribir "Obesidad tipo I (moderada)"
			FinSi
			Si (imc >= 35 Y imc < 40) Entonces
				Escribir "Obesidad tipo II (severa)"
			FinSi
			Si (imc >= 40) Entonces
				Escribir "Obesidad tipo III (mórbida)"
			FinSi
		SiNo
			// En caso de que no se cumpla la validación del peso y la altura,
			// se le indicará al usuario que sus datos son inválidos.
			Escribir "Peso o altura inválidos."
		FinSi
	SiNo
		Escribir "Debes tener al menos 20 años."
	FinSi
FinAlgoritmo
