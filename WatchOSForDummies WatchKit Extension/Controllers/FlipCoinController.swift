//
//  FlipCoinController.swift
//  WatchOSForDummies WatchKit Extension
//
//  Created by david.penagos on 9/3/19.
//  Copyright © 2019 david.penagos. All rights reserved.
//

import WatchKit
import Foundation


class FlipCoinController: WKInterfaceController {
    
    //MARK: - Properties
    @IBOutlet weak var flipCoinImage: WKInterfaceImage!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        animateImage(nameImage: "flipcoin")
        DispatchQueue.main.asyncAfter(deadline: .now() + 2.0) {
            self.showResult()
            self.flipCoinImage.stopAnimating()
        }
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }
    
    //MARK: - Actions
    func animateImage(nameImage: String) {
        flipCoinImage.setImageNamed(nameImage)
        flipCoinImage.startAnimatingWithImages(in: NSRange(location: 0, length: 132), duration: 2, repeatCount: 0)
    }
    
    func showResult() {
        //ANNOTATION: - True for heads and false for tails
        let flipedCoin = Bool.random()
        let stringToShow = (flipedCoin == true) ? "Heads" : "Tails"
        self.presentAlert(withTitle: stringToShow, message: nil, preferredStyle: .alert, actions: [WKAlertAction(title: "OK", style: .default, handler: {})])
    }
}
