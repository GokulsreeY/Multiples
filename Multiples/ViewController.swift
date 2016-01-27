//
//  ViewController.swift
//  Multiples
//
//  Created by Gokulsree Yenugadhati on 1/26/16.
//  Copyright © 2016 Gokul Yenugadhati. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var multiple: Int = 0
    var sum1: Int = 0
    

    @IBOutlet weak var playBtn: UIButton!
    @IBOutlet weak var mulLogo: UIImageView!
    @IBOutlet weak var chalkBg: UIImageView!
    @IBOutlet weak var multText: UITextField!
    @IBOutlet weak var addBtn: UIButton!
    @IBOutlet weak var addtoAdd: UILabel!
    @IBOutlet weak var resetBtn: UIButton!
   
    
    
    @IBAction func onPressedPlayButton(){
        if(multText.text != nil && multText.text != ""){
       
        
            multiple = Int(multText.text!)!
            
            multText.hidden = true
            playBtn.hidden = true
            mulLogo.hidden = true
            
            addBtn.hidden = false
            addtoAdd.hidden = false
            resetBtn.hidden = false
       
        
        }
    }
    
    
    
    @IBAction func onAddButton(){
        
        addtoAdd.text = "\(sum1) + \(multiple) = \(sum1)"
        
        sum1 = sum1 + multiple
        
        
        
    }
    
    @IBAction func onResetButton(){
        sum1 = 0
        multiple = 0
        addBtn.hidden = true
        resetBtn.hidden = true
        addtoAdd.hidden = true
        addtoAdd.text = "Press add to add!"
        multText.text = ""
        playBtn.hidden = false
        multText.hidden = false
        mulLogo.hidden = false
    }
    
   
   
    
    
    
    
    
    

}

