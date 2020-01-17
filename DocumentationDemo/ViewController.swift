//
//  ViewController.swift
//  DocumentationDemo
//
//  Created by Paramitha on 17/01/20.
//  Copyright © 2020 Paramitha. All rights reserved.
//

import UIKit

public class ViewController: UIViewController {

    private var step: Int = 0
    
    private func loginScreen() {
        print("Ini login")
        step = 2
    }
    
    public override func viewDidLoad() {
        super.viewDidLoad()
        trigger()
    }
    
    private func showScreen() {
        if step == 1 {
            loginScreen()
        } else if step == 2 {
            homeScreen()
        } else if step == 3 {
            thankScreen()
        }
    }
    
    private func homeScreen() {
        print("🏡📺")
        step = 3
    }
    
    private func thankScreen() { print("Thank you") }
    
    private func getStep() -> Int {
        if step != 0 {
            return fetchStep()
        }
        return 0
    }
    
    private func fetchStep() -> Int {
        // request network
        return 1
    }
    
    private func trigger() {
        step = getStep()
        showScreen()
    }
}

