//
//  CountCoffeeController.swift
//  WatchOSForDummies WatchKit Extension
//
//  Created by david.penagos on 9/3/19.
//  Copyright © 2019 david.penagos. All rights reserved.
//

import WatchKit
import Foundation


class CountCoffeeController: WKInterfaceController {
    
    //MARK: - Properties
    @IBOutlet weak var countCoffeeGroup: WKInterfaceGroup!
    @IBOutlet weak var lessCountGroup: WKInterfaceGroup!
    @IBOutlet weak var lessCountButton: WKInterfaceButton!
    @IBOutlet weak var showCoffeeGroup: WKInterfaceGroup!
    @IBOutlet weak var showCoffeeLabel: WKInterfaceLabel!
    @IBOutlet weak var moreCountGroup: WKInterfaceGroup!
    @IBOutlet weak var moreCountButton: WKInterfaceButton!
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        addConfigs()
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
    func addConfigs() {
        lessCountGroup.setBackgroundColor(.white)
        lessCountButton.setBackgroundImage(UIImage(named: "down_arrow"))
        lessCountButton.setTitle("")
        moreCountGroup.setBackgroundColor(.white)
        moreCountButton.setBackgroundImage(UIImage(named: "up_arrow"))
        moreCountButton.setTitle("")
        showCoffeeGroup.setBackgroundColor(.green)
        showCoffeeLabel.setText("0")
    }
}
