////////////////////////////////////////////////////
// ElimGauss.sce
// 
// Resuelve un sistema de ecuaciones con el método de Eliminación Gaussiana
// 
// Erick González
// Victor Villarreal
// 26/2/2019 versión 1.0
////////////////////////////////////////////////////
////////////////////////////////////////////////////
// ElimGauss
//
// Resuelve la matriz dada como parámetro con el procedimiento del método de Eliminación Gaussiana 
// 
// Parámetros
// MAT = matriz a resolver
function X = ElimGauss(MAT)
    //Para cada renglon i desde 1 hasta numero de renglones -1
    for(i = 1 : size(MAT,1) - 1)
        //Para cada renglon K desde i+1 hasta numero de renglones
       for(k = i + 1 : size(MAT,1))
         //Obtener el factor
         fact = - MAT(k,i) / MAT(i,i)
         //Para cada una de las columnas j
         for(j = 1 : size(MAT,2))
             MAT(k,j) = MAT(k,j) + fact * MAT(i,j)
          end
        end
        //Despliega la matriz
        disp(MAT)
    end
    //Para cada renglon i desde numero de renglones hasta 1
    for(i = size(MAT,1) : -1 : 1)
        //Inicializa la suma en cero
        dSuma = 0
        //Para cada columna j  desde  i + 1 hasta numero de renglones
        for(j=i + 1 : size(MAT,1))
            //Actualiza el valor de la suma
            dSuma = dSuma + MAT(i,j) * X(j)
        end
        //Calcula el resultado
        X(i) = (MAT(i,size(MAT,2)) - dSuma) / MAT(i,i)
    end
endfunction

////////////////////////////////////////////////////
// Instrucciones del programa principal
////////////////////////////////////////////////////
//Solicita la matriz a resolver
MAT = input("Da la matriz")
//LLama a la función para aplicar el método de Eliminación
X = ElimGauss(MAT)
//Despliega el resultado de la matriz
disp(X)

////////////////////////////////////////////////////
// Casos de Prueba
//
// Input = [2,1,1,2;3,1,-2,9;-1,2,5,-5]
//
// Output = 
//   2.   1.    1.    2.
//   0.  -0.5  -3.5   6.
//   0.   2.5   5.5  -4.
//
//   2.   1.    1.    2. 
//   0.  -0.5  -3.5   6. 
//   0.   0.   -12.   26.
// Resultado:
//   0.5
//   3.1666667
//  -2.1666667
//
////////////////////////////////////////////////////
