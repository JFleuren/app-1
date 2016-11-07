//
//  ViewController.swift
//  joelfleuren-pset1
//
//  Created by joel fleuren on 07-11-16.
//  Copyright © 2016 joel fleuren. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var containerView: UIView!
    // an array with immages
    var imageNames = [ #imageLiteral(resourceName: "arms"),
                       #imageLiteral(resourceName: "ears"),
                       #imageLiteral(resourceName: "mouth"),
                       #imageLiteral(resourceName: "hat"),
                       #imageLiteral(resourceName: "nose"),
                       #imageLiteral(resourceName: "mustache"),
                       #imageLiteral(resourceName: "eyebrows"),
                       #imageLiteral(resourceName: "glasses"),
                       #imageLiteral(resourceName: "shoes"),
                       #imageLiteral(resourceName: "eyes")]
    
    // an empty array to ad the images in
    var imageViewArray = [UIImageView]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
    }
    
    @IBAction func toggleClicked(toggleButton: UISwitch)
    {
        // check if the toggle button is oon
        if (toggleButton.isOn)
        {
            // initialize the imageview
            let potatoImageView = UIImageView(frame: CGRect.init(x: 0, y: 0, width: 180, height: 180))
            potatoImageView.image = imageNames[toggleButton.tag]
            potatoImageView.contentMode = .scaleAspectFit
            // the tag of the switch is the same as the image you want to add so that the ears are added when the ears are on
            potatoImageView.tag = toggleButton.tag
            // store the added image in an array
            imageViewArray.append(potatoImageView)
            containerView.addSubview(potatoImageView)
            
        } else {
            // loop over the array with added pictures
            for (index, imageView) in imageViewArray.enumerated() {
                // check if the picture is the same as the button that is switch of
                if (imageView.tag == toggleButton.tag) {
                    // remove the image from the array
                    imageViewArray.remove(at: index)
                    // remove from the view
                    imageView.removeFromSuperview()
                }
                
            }
            
        }
    }
    
}

