//
//  ViewController.swift
//  SillySong
//
//  Created by Bozkurt on 11/17/20.
//  Copyright © 2020 Bozkurt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var nameField: UITextField!
    
    
    @IBOutlet weak var lyricsView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
            nameField.delegate = self // ?
        
        // Do any additional setup after loading the view.
    }
    @IBAction func reset(_ sender: Any) {
        lyricsView.text = ""
        
    }
    
    @IBAction func displayLyrics(_ sender: Any) {
        lyricsView.text = lyricsForName(lyricsTemplate: bananaFanaTemplate, fullName: nameField.text ??  "")
        
    }
    
    
    
    
    //this is our silly song according to our planned output
    let bananaFanaTemplate = [
        "<FULL_NAME>, <FULL_NAME>, Bo B<SHORT_NAME>",
        "Banana Fana Fo F<SHORT_NAME>",
        "Me My Mo M<SHORT_NAME>",
        "<FULL_NAME>"].joined(separator: "\n")
    
    /*  ---------------------------------------         */
    //The function to find and erase letters previously from before the first consonant
    
    func shortNameForName ( name: String) ->String {
        let vowels=CharacterSet(charactersIn: "aeiöoüu")  // the expected vowels
        
        // getting the info of the index that we will use to seperate our name
        if let range = name.rangeOfCharacter(from: vowels){
            return String(name.suffix(from: range.lowerBound)) // erasing the previous letters using the suffix
        }
        return name
    }
    /*  ---------------------------------------         */
    // This is where we replace our song with the new one that includes our names
    func lyricsForName(lyricsTemplate: String, fullName: String) -> String {
        
        let shortName = shortNameForName(name: fullName)
        // Defining our shortname so that the compiler will not warn about that it is not a constant
        
        let lyrics = lyricsTemplate
            // we are using "replacingOccurrences" to exchange temporary names with the name we want to replace it
            .replacingOccurrences(of: "<FULL_NAME>", with: fullName)
            .replacingOccurrences(of: "<SHORT_NAME>", with: shortName)
        
        return lyrics
    }
    
    
}
extension ViewController: UITextFieldDelegate { // ?
    func textFieldShouldReturn(_ textField: UITextField) -> Bool { // ?
        textField.resignFirstResponder() // ?
        return false // ?
    }
}
