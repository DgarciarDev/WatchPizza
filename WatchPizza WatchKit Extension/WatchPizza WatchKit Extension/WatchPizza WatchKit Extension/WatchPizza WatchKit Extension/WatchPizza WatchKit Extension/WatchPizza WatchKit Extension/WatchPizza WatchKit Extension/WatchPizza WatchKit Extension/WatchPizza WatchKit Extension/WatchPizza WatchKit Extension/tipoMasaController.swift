//
//  tipoMasaController.swift
//  WatchPizza
//
//  Created by Daniel Mauricio Garcia Restrepo on 4/11/15.
//  Copyright © 2015 Dgarciar. All rights reserved.
//

import WatchKit
import Foundation


class tipoMasaController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
        textoTipoMasa(datos.tipoMasa)
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBOutlet var lblTipoMasa: WKInterfaceLabel!
    
    @IBOutlet var slideTipoMasa: WKInterfaceSlider!
    
    
    @IBAction func cambiarTipoMasa(value: Float) {
         textoTipoMasa(Int(value))
    }
    
    
    func textoTipoMasa(valorSlide: Int){
        
        switch valorSlide
        {
        case 1:
            lblTipoMasa.setText("Delgada")
            break
        case 2:
            lblTipoMasa.setText("Crujiente")
            break
        case 3:
            lblTipoMasa.setText("Gruesa")
            break
        default:
            lblTipoMasa.setText("Delgada")
            break
        }
        
        slideTipoMasa.setValue(Float(valorSlide))
        datos.tipoMasa = valorSlide
        
    }
    
}
