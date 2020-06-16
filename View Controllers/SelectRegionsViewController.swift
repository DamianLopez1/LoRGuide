//
//  SelectRegionsViewController.swift
//  Stats Of Runeterra
//
//  Created by Damian Lopez on 3/27/20.
//  Copyright © 2020 Damian Lopez. All rights reserved.
//

import UIKit

class SelectRegionsViewController: UIViewController {
    
    
    @IBOutlet weak var demaciaIcon: UIButton!
    @IBOutlet weak var ioniaIcon: UIButton!
    @IBOutlet weak var freljordIcon: UIButton!
    @IBOutlet weak var noxusIcon: UIButton!
    @IBOutlet weak var piltoverIcon: UIButton!
    @IBOutlet weak var shadowIslesIcon: UIButton!
    
    @IBOutlet weak var findADeckButton: UIButton!
    
    var checkDemacia = true
    var checkFreljord = true
    var checkIonia = true
    var checkNoxus = true
    var checkPiltover = true
    var checkShadowIsles = true
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        findADeckButton.isEnabled == false
        demaciaIcon.setImage(UIImage(named: "Demacia Selected"), for: .selected)
        freljordIcon.setImage(UIImage(named: "freijlord Selected"), for: .selected)
        ioniaIcon.setImage(UIImage(named: "IOANIA Selected"), for: .selected)
        noxusIcon.setImage(UIImage(named: "Noxus Selected"), for: .selected)
        piltoverIcon.setImage(UIImage(named: "Piltover Selected"), for: .selected)
        shadowIslesIcon.setImage(UIImage(named: "Shadow Isles Selected"), for: .selected)
        
   
    }
    
    
    @IBAction func findYourDeckButtonPressed(_ sender: Any) {
        
    }
    
    @IBOutlet var arrayOfRegions: [UIButton]!
    
    @IBAction func tappedOnMultipleRegions(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
        checkForPairsofRegions()
        
    }
    
    


    func checkForPairsofRegions() {
        let selectedButtons = arrayOfRegions.filter { $0.isSelected }
        
        let unselectedButtons = arrayOfRegions.filter { !$0.isSelected}
        
        if selectedButtons.count == 2 {
            unselectedButtons.forEach({$0.isEnabled = false})
            findADeckButton.isEnabled = false
        } else {
            unselectedButtons.forEach({$0.isEnabled = true})
            findADeckButton.isEnabled = true
        }
    
        
    }
    //Loading the correct deck when peeforming a segue
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "deckPreview" {
            
            if demaciaIcon.isEnabled == true && freljordIcon.isEnabled == true {
                let dpvc = segue.destination as! DeckPreviewViewController
                dpvc.deckImage = UIImage(named: "Demacia - Freiljord Deck")
            }
            
            if demaciaIcon.isEnabled == true && ioniaIcon.isEnabled == true {
                let dpvc = segue.destination as! DeckPreviewViewController
                dpvc.deckImage = UIImage(named: "Demacia - Ionia Deck")
            }
            
            if demaciaIcon.isEnabled == true && noxusIcon.isEnabled == true {
                let dpvc = segue.destination as! DeckPreviewViewController
                dpvc.deckImage = UIImage(named: "Demacia - Noxus Deck")
            }
            
            if demaciaIcon.isEnabled == true && piltoverIcon.isEnabled == true {
                let dpvc = segue.destination as! DeckPreviewViewController
                dpvc.deckImage = UIImage(named: "Demacia - Piltover Deck")
            }
            
            if demaciaIcon.isEnabled == true && shadowIslesIcon.isEnabled == true {
                let dpvc = segue.destination as! DeckPreviewViewController
                dpvc.deckImage = UIImage(named: "Demacia - Shadowisles Deck")
            }
            
            if freljordIcon.isEnabled == true && ioniaIcon.isEnabled == true {
                let dpvc = segue.destination as! DeckPreviewViewController
                dpvc.deckImage = UIImage(named: "Freiljord - Ionia Deck")
            }
            
            if freljordIcon.isEnabled == true && noxusIcon.isEnabled == true {
                let dpvc = segue.destination as! DeckPreviewViewController
                dpvc.deckImage = UIImage(named: "Freljord - Noxus Deck")
            }
            
            if freljordIcon.isEnabled == true && piltoverIcon.isEnabled == true {
                let dpvc = segue.destination as! DeckPreviewViewController
                dpvc.deckImage = UIImage(named: "Freljord - Piltover Deck")
            }
            
            if freljordIcon.isEnabled == true && shadowIslesIcon.isEnabled == true {
                let dpvc = segue.destination as! DeckPreviewViewController
                dpvc.deckImage = UIImage(named: "Freljord - Shadow Isles Deck")
            }
            
            if ioniaIcon.isEnabled == true && noxusIcon.isEnabled == true {
                let dpvc = segue.destination as! DeckPreviewViewController
                dpvc.deckImage = UIImage(named: "Ionia - Noxus Deck")
            }
            
            if ioniaIcon.isEnabled == true && piltoverIcon.isEnabled == true {
                let dpvc = segue.destination as! DeckPreviewViewController
                dpvc.deckImage = UIImage(named: "Ionia - Piltover Deck")
            }
            
            if ioniaIcon.isEnabled == true && shadowIslesIcon.isEnabled == true {
                let dpvc = segue.destination as! DeckPreviewViewController
                dpvc.deckImage = UIImage(named: "Ionia - Shadow Isles Deck")
            }
            
            if noxusIcon.isEnabled == true && shadowIslesIcon.isEnabled == true {
                let dpvc = segue.destination as! DeckPreviewViewController
                dpvc.deckImage = UIImage(named: "Noxus - Shadow Isles Deck")
            }
            
            if noxusIcon.isEnabled == true && piltoverIcon.isEnabled == true {
                let dpvc = segue.destination as! DeckPreviewViewController
                dpvc.deckImage = UIImage(named: "Piltover - Noxus Deck")
            }
            
            if shadowIslesIcon.isEnabled == true && piltoverIcon.isEnabled == true {
                let dpvc = segue.destination as! DeckPreviewViewController
                dpvc.deckImage = UIImage(named: "Piltover - Shadow Isles Deck")
            }
            
        }
    }

    
}
