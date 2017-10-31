//
//  ViewController.swift
//  ColorMakerWithSliders
//
//  Created by xengar on 2017-10-31.
//  Copyright © 2017 xengar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    // MARK: Outlets
    @IBOutlet weak var colorView    : UIView!
    @IBOutlet weak var redControl   : UISlider!
    @IBOutlet weak var greenControl : UISlider!
    @IBOutlet weak var blueControl  : UISlider!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        // Set colorView on launch
        changeColorComponent()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    // MARK: Actions
    @IBAction func changeColorComponent() {
        
        // Make sure the program doesn't crash if the controls aren't connected
        if self.redControl == nil {
            return
        }
        
        //let r: CGFloat = self.redControl.isOn ? 1 : 0
        let r: CGFloat = CGFloat(self.redControl.value)
        let g: CGFloat = CGFloat(self.greenControl.value)
        let b: CGFloat = CGFloat(self.blueControl.value)
        
        colorView.backgroundColor = UIColor(red: r, green: g, blue: b, alpha: 1)
    }

}

