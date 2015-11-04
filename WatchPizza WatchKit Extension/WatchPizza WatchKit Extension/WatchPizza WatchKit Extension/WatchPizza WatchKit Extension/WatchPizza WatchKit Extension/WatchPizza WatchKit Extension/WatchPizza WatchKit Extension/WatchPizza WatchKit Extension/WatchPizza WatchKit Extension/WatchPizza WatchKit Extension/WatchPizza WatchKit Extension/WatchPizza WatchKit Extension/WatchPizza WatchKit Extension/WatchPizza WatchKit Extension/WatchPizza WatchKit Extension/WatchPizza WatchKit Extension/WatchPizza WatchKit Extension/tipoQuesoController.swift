//
//  tipoQuesoController.swift
//  WatchPizza
//
//  Created by Daniel Mauricio Garcia Restrepo on 4/11/15.
//  Copyright © 2015 Dgarciar. All rights reserved.
//

import WatchKit
import Foundation


class tipoQuesoController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        textoTipoQueso(datos.tipoQueso)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBOutlet var lblTipoQueso: WKInterfaceLabel!
    
    @IBOutlet var slideTipoQueso: WKInterfaceSlider!
    
    @IBAction func cambiarTipoQueso(value: Float) {
        
         textoTipoQueso(Int(value))
    }
    
    
    func textoTipoQueso(valorSlide: Int){
        
        switch valorSlide
        {
        case 1:
            lblTipoQueso.setText("Mozarela")
            break
        case 2:
            lblTipoQueso.setText("Cheddar")
            break
        case 3:
            lblTipoQueso.setText("Parmesano")
            break
        case 4:
            lblTipoQueso.setText("Sin Queso")
            break
        default:
            lblTipoQueso.setText("Mozarela")
            break
        }
        
        slideTipoQueso.setValue(Float(valorSlide))
        datos.tipoQueso = valorSlide
        
    }
}
