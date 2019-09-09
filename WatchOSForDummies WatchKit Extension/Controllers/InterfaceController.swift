//
//  InterfaceController.swift
//  WatchOSForDummies WatchKit Extension
//
//  Created by david.penagos on 8/20/19.
//  Copyright © 2019 david.penagos. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {
    
    //MARK: - Properties
    @IBOutlet var welcomeLabel: WKInterfaceLabel!
    @IBOutlet weak var optionsTable: WKInterfaceTable!
    
    var tableItemBackgroundColor = [UIColor.red, UIColor.green]
    var tableImageItem = [UIImage(named: "coffee"), UIImage(named: "coin")]
    var tableItems = ["CountCoff", "FlipCoin"]
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
        setRowsOnTable()
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
    func setRowsOnTable() {
        optionsTable.setNumberOfRows(tableItems.count, withRowType: "RowController")
        for (index, rowModel) in tableItems.enumerated() {
            if let rowController = optionsTable.rowController(at: index) as? RowController {
                rowController.rowGroup.setBackgroundColor(tableItemBackgroundColor[index])
                rowController.imageRow.setImage(tableImageItem[index])
                rowController.itemRowLabel.setText(rowModel)
            }
        }
    }
    
    override func table(_ table: WKInterfaceTable, didSelectRowAt rowIndex: Int) {
        switch rowIndex {
        case 0:
            super.pushController(withName: "countCoffeeId", context: nil)
        case 1:
            super.pushController(withName: "flipCoinId", context: nil)
        default:
            fatalError("Out of Index")
        }
    }
}
