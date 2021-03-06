//
//  ViewController.swift
//  Example-Swift
//
//  Created by pronebird on 6/13/16.
//  Copyright © 2016 pronebird. All rights reserved.
//

import UIKit
import POLocalizedString

class ViewController: UIViewController {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var slider: UISlider!
    @IBOutlet weak var subTitleLabel: UILabel!
    @IBOutlet weak var versionLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        /// Title label
        titleLabel.text = "Choose number of apples".localized
        
        subTitleLabel.text = nil

        versionLabel.text = "iOS %s".localized(with: UIDevice.current.systemVersion)
    }

    @IBAction func sliderValueDidChange(_ sender: AnyObject) {
        let count = Int(slider.value)
        
        /// Sub-title with number of apples
        subTitleLabel.text = "%i apple".localized(plural: "%i apples", n: count, with: count)
    }
    
}

