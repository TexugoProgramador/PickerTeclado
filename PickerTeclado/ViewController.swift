//
//  ViewController.swift
//  PickerTeclado
//
//  Created by humberto Lima on 09/09/19.
//  Copyright © 2019 humberto Lima. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var campoTexto: UITextField!
    
    var arrayItens = ["item 1","item 2","item 3","item 4","item 5","item 6"]
    
    var pickerTeclado = UIPickerView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        pickerTeclado.delegate = self
        pickerTeclado.dataSource = self
        
        campoTexto.inputView = pickerTeclado
    }
    
    @IBAction func ocultaTeclado(_ sender: UITapGestureRecognizer) {
        campoTexto.resignFirstResponder()
    }
    
}


extension ViewController: UIPickerViewDelegate, UIPickerViewDataSource {
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return arrayItens.count
    }
    
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return arrayItens[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        campoTexto.text = arrayItens[row]
    }
    
}
