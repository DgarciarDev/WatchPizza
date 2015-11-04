//
//  ingredientesController.swift
//  WatchPizza
//
//  Created by Daniel Mauricio Garcia Restrepo on 4/11/15.
//  Copyright © 2015 Dgarciar. All rights reserved.
//

import WatchKit
import Foundation


class ingredientesController: WKInterfaceController {

    var seleccionados: Int = 0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        traeDatos()
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBOutlet var sJamon: WKInterfaceSwitch!
    @IBOutlet var sCebolla: WKInterfaceSwitch!
    @IBOutlet var sPepperoni: WKInterfaceSwitch!
    @IBOutlet var sPimiento: WKInterfaceSwitch!
    @IBOutlet var sPavo: WKInterfaceSwitch!
    @IBOutlet var sPiña: WKInterfaceSwitch!
    @IBOutlet var sSalchicha: WKInterfaceSwitch!
    @IBOutlet var sAnchoa: WKInterfaceSwitch!
    @IBOutlet var sAceituna: WKInterfaceSwitch!
    @IBOutlet var sCiruela: WKInterfaceSwitch!
    
    
    @IBAction func swJamon(value: Bool) {
        
        datos.jamon = value
        
        datos.jamon = inhabilitarCompra(value)
        
        sJamon.setOn(datos.jamon)
    }
    
    @IBAction func swCebolla(value: Bool) {
        
        datos.cebolla = value
        
        datos.cebolla = inhabilitarCompra(value)
        
        sCebolla.setOn(datos.cebolla)
    }
    
    @IBAction func swPepperoni(value: Bool) {
        
        datos.pepperoni = value
        
        datos.pepperoni = inhabilitarCompra(value)
        
        sPepperoni.setOn(datos.pepperoni)
    }
    
    @IBAction func swPimiento(value: Bool) {
    
        datos.pimiento = value
        
        datos.pimiento = inhabilitarCompra(value)
        
        sPimiento.setOn(datos.pimiento)}
    
    @IBAction func swPavo(value: Bool) {
        
        datos.pavo = value
        
        datos.pavo = inhabilitarCompra(value)
        
        sPavo.setOn(datos.pavo)
    }

    @IBAction func swPiña(value: Bool) {
        
        datos.piña = value
        
        datos.piña = inhabilitarCompra(value)
        
        sPiña.setOn(datos.piña)
    }
    
    @IBAction func swSalchicha(value: Bool) {
        
        datos.salchicha = value
        
        datos.salchicha = inhabilitarCompra(value)
        
        sSalchicha.setOn(datos.salchicha)
    }

    @IBAction func swAnchoa(value: Bool) {
    
        datos.anchoa = value
        
        datos.anchoa = inhabilitarCompra(value)
        
        sAnchoa.setOn(datos.anchoa)
    }
    
    @IBAction func swAceituna(value: Bool) {
        
        datos.aceituna = value
        
        datos.aceituna = inhabilitarCompra(value)
        
        sAceituna.setOn(datos.aceituna)
    }
    
    @IBAction func swCiruela(value: Bool) {
        
        datos.ciruela = value
        
        datos.ciruela = inhabilitarCompra(value)
        
        sCiruela.setOn(datos.ciruela)
    }
    
    
    
    func traeDatos(){
    
        if(sJamon==nil){return}
        
        sJamon.setOn(datos.jamon)
        sPepperoni.setOn(datos.pepperoni)
        sPavo.setOn(datos.pavo)
        sSalchicha.setOn(datos.salchicha)
        sAceituna.setOn(datos.aceituna)
        sCebolla.setOn(datos.cebolla)
        sPimiento.setOn(datos.pimiento)
        sPiña.setOn(datos.piña)
        sAnchoa.setOn(datos.anchoa)
        sCiruela.setOn(datos.ciruela)
        
    }
    
    
    
    
    
    func inhabilitarCompra(activar: Bool) -> Bool{
        
        var valor: Bool = false
        
        if activar == false
        {
            valor = false
            
            contarSeleccionados()
    
            
            //self.lblMensaje.text = ""
        }
        else
        {
            if contarSeleccionados() > 5
            {
                //self.lblMensaje.text = "Superaste el numero de ingredientes permitidos !"
                //btnConfirmar.enabled = false
                valor = false
            }
            else
            {
                //self.lblMensaje.text = ""
                //btnConfirmar.enabled = true
                valor = true
            }
            
        }
        
        return valor
    }
    
    
    func contarSeleccionados() -> Int{
        
        seleccionados = 0
        
        if(datos.jamon){
            seleccionados++
        }
        if(datos.pepperoni){
            seleccionados++
        }
        if(datos.pavo){
            seleccionados++
        }
        if(datos.salchicha){
            seleccionados++
        }
        if(datos.aceituna){
            seleccionados++
        }
        if(datos.cebolla){
            seleccionados++
        }
        if(datos.pimiento){
            seleccionados++
        }
        if(datos.piña){
            seleccionados++
        }
        if(datos.anchoa){
            seleccionados++
        }
        if(datos.ciruela){
            seleccionados++
        }
        
        /*
        if seleccionados > 0 {
            btnConfirmar.enabled = true
        }else {
            btnConfirmar.enabled = false
        }
        */
        
        return seleccionados
    }
    

    
    
    
    
}
