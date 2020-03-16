//
//  Viagem.swift
//  calculadora trajeto
//
//  Created by RAVENA MARIA AMARAL DE ARRUDA on 10/03/20.
//  Copyright © 2020 RAVENA MARIA AMARAL DE ARRUDA. All rights reserved.
//

import Foundation

class Viagem {
    var distanciaKm: Float
    var velocidadeKmH: Float
    var paradaTempo: Float
    
    init(velocidade: Float, distancia: Float, parada: Float) {
        velocidadeKmH = velocidade
        distanciaKm = distancia
        paradaTempo = parada
    }
    
    func tempo() -> String {
        let resultado = ((distanciaKm / velocidadeKmH) * 60) + paradaTempo
        let resultadoInteiro = Int (resultado)
        let hora = Int (resultadoInteiro / 60)
        let minuto = Int (resultadoInteiro % 60)
    
        let horaMinutoString = "\(hora) hr \(minuto) min"
        return horaMinutoString
        
    }
}
