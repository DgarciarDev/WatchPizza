//
//  tamanoController.swift
//  WatchPizza
//
//  Created by Daniel Mauricio Garcia Restrepo on 4/11/15.
//  Copyright © 2015 Dgarciar. All rights reserved.
//

import WatchKit
import Foundation


class tamanoController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
      textoTamano(datos.tamano)
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
    
    @IBOutlet var slideTamano: WKInterfaceSlider!
    
    
    @IBAction func cambiarTamano(value: Float) {
        
        textoTamano(Int(value))
    
    }
    
    
    func textoTamano(valorSlide: Int){
        
        if(lblTamano == nil){ return}
        
        switch valorSlide
        {
        case 1:
            lblTamano.setText("Chica")
            break
        case 2:
            lblTamano.setText("Mediana")
            break
        case 3:
            lblTamano.setText("Grande")
            break
        default:
            lblTamano.setText("Pequeña")
            break
        }
        
        slideTamano.setValue(Float(valorSlide))
        datos.tamano = valorSlide
        
    }
    
}
