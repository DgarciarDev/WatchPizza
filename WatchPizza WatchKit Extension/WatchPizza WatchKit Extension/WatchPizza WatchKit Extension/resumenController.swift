//
//  resumenController.swift
//  WatchPizza
//
//  Created by Daniel Mauricio Garcia Restrepo on 4/11/15.
//  Copyright © 2015 Dgarciar. All rights reserved.
//

import WatchKit
import Foundation


class resumenController: WKInterfaceController {

    var lista: String = ""
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        traerValores()
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    
    @IBOutlet var lblTamano: WKInterfaceLabel!
    
    @IBOutlet var lblTipoMasa: WKInterfaceLabel!
    
    @IBOutlet var lblTipoQueso: WKInterfaceLabel!
    
    @IBOutlet var lblIngredientes: WKInterfaceLabel!

    @IBOutlet var btnComprar: WKInterfaceButton!

    func traerValores(){
    
        if(lblTamano == nil){return}
        
        lblTamano.setText(definirTamano(datos.tamano))
        lblTipoMasa.setText(definirTipoDeMasa(datos.tipoMasa))
        lblTipoQueso.setText(definirTipoDeQueso(datos.tipoQueso))
        lblIngredientes.setText(listarIngredientes())
        
        //Si no tiene ingredientes inhabilita el boton de compra
    
        btnComprar.setEnabled(true)
        
        print(lista)
        
        if(String(lista).isEmpty){
            btnComprar.setEnabled(false)
        }
        
    }
    
    func definirTamano(valor: Int) -> String{
        
        var retorno: String
        
        if(valor == 1){
            retorno = "Chica"
        }else if(valor == 2){
            retorno = "Mediana"
        }else if (valor == 3){
            retorno = "Grande"
        } else {
            retorno = ""
        }
        
        return retorno
    }
    
    func definirTipoDeMasa(valor: Int) -> String{
        
        var retorno: String
        
        if(valor == 1){
            retorno = "Delgada"
        }else if(valor == 2){
            retorno = "Crujiente"
        }else if (valor == 3){
            retorno = "Gruesa"
        } else {
            retorno = ""
        }
        
        return retorno
    }
    
    func definirTipoDeQueso(valor: Int) -> String{
        
        var retorno: String
        
        if(valor == 1){
            retorno = "Mozarela"
        }else if(valor == 2){
            retorno = "Cheddar"
        }else if (valor == 3){
            retorno = "Parmesano"
        } else if(valor == 4){
            retorno = "Sin queso"
        } else {
            retorno = ""
        }
        
        
        return retorno
    }
    
    func listarIngredientes() -> String
    {

        
        if datos.jamon{
            lista = lista + "Jamón  "
        }
        if(datos.pepperoni){
            lista = lista + "Pepperoni  "
        }
        if(datos.pavo){
            lista = lista + "Pavo  "
        }
        if(datos.salchicha){
            lista = lista + "Salchicha  "
        }
        if(datos.aceituna){
            lista = lista + "Aceituna  "
        }
        if(datos.cebolla){
            lista = lista + "Cebolla  "
        }
        if(datos.pimiento){
            lista = lista + "Pimiento  "
        }
        if(datos.piña){
            lista = lista + "Piña  "
        }
        if(datos.anchoa){
            lista = lista + "Anchoas  "
        }
        if(datos.ciruela){
            lista = lista + "Ciruelas  "
        }
        
        return lista
        
        
    }
    
}
