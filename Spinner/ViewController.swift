//
//  ViewController.swift
//  Spinner
//
//  Created by Kenneth Wilcox on 8/29/15.
//  Copyright (c) 2015 Kenneth Wilcox. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

  @IBOutlet weak var spinner: Spinner!
  @IBOutlet weak var spinner2: Spinner!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
  }

  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }

  @IBAction func buttonPressed(sender: AnyObject) {
    spinner2.setDuration(0.5)
    let duration = NSTimeInterval(arc4random_uniform(100) + 10) / 100
    print(duration)
    spinner.setDuration(duration)
    spinner.toggleSpinner()
    spinner2.toggleSpinner()
  }

}

