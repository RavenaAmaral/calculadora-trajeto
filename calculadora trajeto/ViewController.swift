//
//  ViewController.swift
//  calculadora trajeto
//
//  Created by RAVENA MARIA AMARAL DE ARRUDA on 02/03/20.
//  Copyright © 2020 RAVENA MARIA AMARAL DE ARRUDA. All rights reserved.
//

import UIKit

class ViewController: UIViewController{
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        configureTextFields()
        configureTapGesture()
    }
    
    @IBAction func transporte(_ sender: UIButton) {
        if sender == carroButton {
            let carro = "60"
            velocidadeTextField.text = carro
            
            
            
            if carroButtonLigado == false {
                carroButton.setImage(UIImage(named:"carrofinal") , for: UIControl.State.normal)
                carroButtonLigado = true
                motoButton.setImage(UIImage(named:"motocinza2") , for: UIControl.State.normal)
                motoButtonLigado = false
                bicicletaButton.setImage(UIImage(named:"bicicletacinza2") , for: UIControl.State.normal)
                bicicletaButtonLigado = false
                pessoaButton.setImage(UIImage(named:"pessoacinza2") , for: UIControl.State.normal)
                pessoaButtonLigado = false
            }
            else {
                carroButton.setImage(UIImage(named:"carrocinza2") , for: UIControl.State.normal)
                carroButtonLigado = false
                velocidadeTextField.text = ""
            }
            
        }
        else if sender == motoButton {
            let moto = "60"
            
            velocidadeTextField.text = moto
            if motoButtonLigado == false {
                motoButton.setImage(UIImage(named:"motofinal") , for: UIControl.State.normal)
                motoButtonLigado = true
                carroButton.setImage(UIImage(named:"carrocinza2") , for: UIControl.State.normal)
                carroButtonLigado = false
                bicicletaButton.setImage(UIImage(named:"bicicletacinza2") , for: UIControl.State.normal)
                bicicletaButtonLigado = false
                pessoaButton.setImage(UIImage(named:"pessoacinza2") , for: UIControl.State.normal)
                pessoaButtonLigado = false
            }
            else {
                motoButton.setImage(UIImage(named:"motocinza2") , for: UIControl.State.normal)
                motoButtonLigado = false
                velocidadeTextField.text = "" }
        }
        else if sender == bicicletaButton {
            let bicicleta = "18"
            velocidadeTextField.text = bicicleta
            if bicicletaButtonLigado == false {
                bicicletaButton.setImage(UIImage(named:"bikefinal") , for: UIControl.State.normal)
                bicicletaButtonLigado = true
                motoButton.setImage(UIImage(named:"motocinza2") , for: UIControl.State.normal)
                motoButtonLigado = false
                carroButton.setImage(UIImage(named:"carrocinza2") , for: UIControl.State.normal)
                carroButtonLigado = false
                pessoaButton.setImage(UIImage(named:"pessoacinza2") , for: UIControl.State.normal)
                pessoaButtonLigado = false
            }
            else {
                bicicletaButton.setImage(UIImage(named:"bicicletacinza2") , for: UIControl.State.normal)
                bicicletaButtonLigado = false
                velocidadeTextField.text = "" }
        }
        else {
            let pessoa = "6"
            velocidadeTextField.text = pessoa
            if pessoaButtonLigado == false {
                pessoaButton.setImage(UIImage(named:"pessoafinal") , for: UIControl.State.normal)
                pessoaButtonLigado = true
                motoButton.setImage(UIImage(named:"motocinza2") , for: UIControl.State.normal)
                motoButtonLigado = false
                bicicletaButton.setImage(UIImage(named:"bicicletacinza2") , for: UIControl.State.normal)
                bicicletaButtonLigado = false
                carroButton.setImage(UIImage(named:"carrocinza2") , for: UIControl.State.normal)
                carroButtonLigado = false
            }
            else {
                pessoaButton.setImage(UIImage(named:"pessoacinza2") , for: UIControl.State.normal)
                pessoaButtonLigado = false
                velocidadeTextField.text = "" }
        }
    }
    @IBOutlet var velocidadeTextField: UITextField!
    @IBOutlet var distanciaTextField: UITextField!
    @IBOutlet var resultadoLabel: UILabel!
    
    
    @IBOutlet var carroButton: UIButton!
    var carroButtonLigado = false
    
    @IBOutlet var clearParadaButton: UIButton!
    @IBOutlet var clearVelocidadeButton: UIButton!
    
    @IBOutlet var clearDistanciaButton: UIButton!
    
    @IBOutlet var paradaTextField: UITextField!
    @IBOutlet var motoButton: UIButton!
    var motoButtonLigado = false
    @IBOutlet var bicicletaButton:
    UIButton!
    var bicicletaButtonLigado = false
    @IBOutlet var pessoaButton: UIButton!
    var pessoaButtonLigado = false
    @IBOutlet var tempo: UILabel!
    
    @IBAction func CalcularTempo() {
        if velocidadeTextField.text == "" || distanciaTextField.text == "" {
            let alertController = UIAlertController(title:  "Aviso", message: "Preencha todos os campos", preferredStyle: UIAlertController.Style.alert)
            alertController.addAction(UIAlertAction (title: "ok", style: UIAlertAction.Style.default, handler: nil))
            present(alertController, animated: true, completion: nil)
        }
        else {
            calcularTempo()
            tempo.isHidden = false
            clearDistanciaButton.isHidden = false
            clearVelocidadeButton.isHidden = false
            
            clearParadaButton.isHidden = false
            
        }
    }
    
    @IBAction func clearVelocidade(_ sender: UIButton) {
        clearVelocidade()
    }
    @IBAction func clearDistancia(_ sender: UIButton) {
        clearDistancia()
    }
    
    @IBAction func clearParada(_ sender: UIButton) {
        clearParada()
    }
    func calcularTempo() {
        
        let velocidade = velocidadeTextField.text
        let velocidadeFloat = Float(velocidade!)
        let distancia = distanciaTextField.text
        let distanciaFloat = Float(distancia!)
        var parada = paradaTextField.text
        if parada == ""{
            parada = "0"
        }
        
        let paradaFloat = Float(parada!)
        var viagem: Viagem
        viagem = Viagem(velocidade: velocidadeFloat!, distancia: distanciaFloat!, parada: paradaFloat!)
        resultadoLabel.text = viagem.tempo()
        
    }
    
    func salvarVelocidadeCarro () {
        
        var carro = velocidadeTextField.text
    }
    
    func salvarVelocidadeMoto () {
        // Ler o que está no text field velocidade média (km/h)
        var moto = velocidadeTextField.text
        // salvar o valor escrito
        
    }
    
    func salvarVelocidadeBicicleta () {
        var bicicleta = velocidadeTextField.text
        
        
    }
    
    func salvarVelocidadePessoa () {
        
        var pessoa = velocidadeTextField.text
        
        
    }
    
    func preencherValorSalvoCarro () {
        // Colocar o valor salvo em carro no text field Velocidade média (km/h)
        
    }
    
    func preencherValorSalvoMoyo () {
        // Colocar o valor salvo em moto no text field Velocidade média (km/h)
    }
    
    func preencherValorSalvoBicicleta () {
        // Colocar o valor salvo em bicicleta no text field Velocidade média (km/h)
    }
    
    func preencherValorSalvoPessoa () {
        
    }
    
    func clearVelocidade () {
        velocidadeTextField.text = ""
        resultadoLabel.text = ""
        tempo.isHidden = true
        
    }
    func clearDistancia () {
        distanciaTextField.text = ""
        resultadoLabel.text = ""
        tempo.isHidden = true
    }
    func clearParada (){
        paradaTextField.text = ""
        resultadoLabel.text = ""
        tempo.isHidden = true
    }
    private func configureTapGesture() {
        let tapGesture = UITapGestureRecognizer(target: self, action: #selector(ViewController.handleTap))
        view.addGestureRecognizer(tapGesture)
    }
    
    @objc func handleTap() {
        view.endEditing(true)
    }
    private func configureTextFields() {
        velocidadeTextField.delegate = self
        distanciaTextField.delegate = self
    }
    
    
    
    
    
    
}
extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
        
    }
}
