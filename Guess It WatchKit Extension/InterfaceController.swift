//
//  InterfaceController.swift
//  Guess It WatchKit Extension
//
//  Created by Yurii Sameliuk on 11/11/2020.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet var myLabel: WKInterfaceLabel!
    @IBOutlet var myButton: WKInterfaceButton!
    
    let movies = FilmModel.getFilm()
    
    var element: FilmModel?
    
    private var timer: Timer?
    
    // analog viewDidload
    override func awake(withContext context: Any?) {
        //randomno poly4aem element masiwa
        element = movies.randomElement()
        myLabel.setText("")
        myButton.setTitle(element?.emoji)
    }
    
    // wuzuw kogda polzowatel obratno wernylsia na ekran
    override func willActivate() {

        // This method is called when watch view controller is about to be visible to user
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
    }
    
    @IBAction func refreshAction() {
        myLabel.setText(element?.name)
        
        timer?.invalidate()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: false, block: { (_) in
            self.element = self.movies.randomElement()
            self.myButton.setTitle(self.element?.emoji)
            self.myLabel.setText("")
        })
    }
    
}
