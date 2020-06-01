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
    

    var checkDemacia = true
    var checkFreljord = true
    var checkIonia = true
    var checkNoxus = true
    var checkPiltover = true
    var checkShadowIsles = true
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

   
    }
    
    
    @IBAction func findYourDeckButtonPressed(_ sender: Any) {
        
    }
    
    @IBAction func demaciaIconTapped(_ sender: Any) {
        
        checkDemacia = !checkDemacia
        
        if checkDemacia == true {
        demaciaIcon.setImage(UIImage(named: "Demacia Selected"), for: .normal)
        } else if checkDemacia == false {
            demaciaIcon.setImage(UIImage(named: "icon-demacia"), for: .normal)
        }
        checkForDemaciaFreljord()
        bringButtonsBackDemaciaFreljord()
    }
    
    
    @IBAction func freljordIconTapped(_ sender: Any) {
        
        checkFreljord = !checkFreljord
        
        if checkFreljord == true {
               freljordIcon.setImage(UIImage(named: "freijlord selected"), for: .normal)
               } else if checkFreljord == false {
                   freljordIcon.setImage(UIImage(named: "icon-freljord"), for: .normal)
               }
//        checkForDemaciaFreljord()
        checkForDemaciaFreljord()
        bringButtonsBackDemaciaFreljord()
    }
    
    
    @IBAction func ioniaIconTapped(_ sender: Any) {
        
        checkIonia = !checkIonia
         
         if checkIonia == true {
                ioniaIcon.setImage(UIImage(named: "icon-ionia"), for: .normal)
                } else if checkIonia == false {
                    ioniaIcon.setImage(UIImage(named: "IOANIA Selected"), for: .normal)
                }
    }
    
    @IBAction func noxusIconTapped(_ sender: Any) {
        
        checkNoxus = !checkNoxus
        
        if checkNoxus == true {
               noxusIcon.setImage(UIImage(named: "icon-noxus"), for: .normal)
               } else if checkNoxus == false {
                   noxusIcon.setImage(UIImage(named: "Noxus Selected"), for: .normal)
               }

    }
    
    @IBAction func piltoverIconTapped(_ sender: Any) {
        
        checkPiltover = !checkPiltover
        
        if checkPiltover == true {
        piltoverIcon.setImage(UIImage(named: "icon-piltover"), for: .normal)
        } else if checkPiltover == false {
            piltoverIcon.setImage(UIImage(named: "Piltover Selected"), for: .normal)
        }
        
    }
    
    @IBAction func shadowIslesIcon(_ sender: Any) {
        
        checkShadowIsles = !checkShadowIsles
        
        if checkShadowIsles == true {
        shadowIslesIcon.setImage(UIImage(named: "icon-shadowisles"), for: .normal)
        } else if checkShadowIsles == false {
            shadowIslesIcon.setImage(UIImage(named: "Shadow Isles Selected"), for: .normal)
        }
    }
    //This is being called in Demacia to check for the combo
    func checkForDemaciaFreljord() {
        if (freljordIcon.currentImage?.isEqual(UIImage(named: "freijlord selected")))! && (demaciaIcon.currentImage?.isEqual(UIImage(named: "Demacia Selected")))! {
            
            ioniaIcon.isEnabled = false
            noxusIcon.isEnabled = false
            piltoverIcon.isEnabled = false
            shadowIslesIcon.isEnabled = false
            
        } else  {
            return
        }
    }

    
    
    //this is being called in Demacia and Freiljord to return buttons
    func bringButtonsBackDemaciaFreljord() {
        if (demaciaIcon.currentImage?.isEqual(UIImage(named: "icon-demacia")))! || (freljordIcon.currentImage?.isEqual(UIImage(named: "icon-freljord")))!{
            ioniaIcon.isEnabled = true
            noxusIcon.isEnabled = true
            piltoverIcon.isEnabled = true
            shadowIslesIcon.isEnabled = true
            
            } else {
                return
            }
    }
    
    
    
    
}
