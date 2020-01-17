//
//  ViewController.swift
//  DocumentationDemo
//
//  Created by Paramitha on 17/01/20.
//  Copyright © 2020 Paramitha. All rights reserved.
//

import UIKit

public class ViewController: UIViewController {
    
    // MARK: - Variables
    /// Holds the value of current step the user is in
    private var step: Int = 0 // TODO: - Change to enum
    
    // MARK: - Views
    private let label: UILabel = {
        let label = UILabel()
        label.frame = CGRect(x: 50, y: 10, width: 200, height: 100)
        label.backgroundColor = .systemGreen
        label.textAlignment = NSTextAlignment.center
        label.text = "test label"
        return label
    }()
    
    private let button: UIButton = {
        let button = UIButton()
        setFrame: do {
            button.frame = CGRect(x: 50, y: 120, width: 200, height: 100)
        }
        styling: do {
            button.backgroundColor = UIColor.systemBlue
            button.setTitle("Press me!", for: .normal)
        }
        actionItem: do {
            button.addTarget(self, action: #selector(trigger), for: .touchUpInside)
        }
        return button
    }()
    
    // MARK: - Lifecycle
    public override func viewDidLoad() {
        // don't forget to call super if overriding!
        super.viewDidLoad()
        trigger()
    }
    
    // MARK: - Setup
    /**
     Trigger screen change and update step.
     
     ## Flow
     1. Fetch data from backend and log the description
     2. Update step value
     3. Present new screen
     - warning: use on main thread only!
     - important: [try me!](https://tokopedia.com)
     
     */
    @objc private func trigger() {
        print(fetchData().description)
        step = getStep()
        setupScreen(s: step)
    }
    
    /**
     Setup which screen to show.
     - parameters:
        - s: Indicate the step user is on
     */
    private func setupScreen(s: Int) {
        if s == 1 {
            loginScreen()
        } else if s == 2 {
            homeScreen()
        } else if s == 3 {
            thankScreen()
        }
    }
    
    // MARK: - Show screen functions
    private func loginScreen() {
        print("Ini login")
    }
    
    private func homeScreen() {
        print("🏡📺")
    }
    private func thankScreen() { print("Thank you") }
    
    // MARK: - Manage steps
    
    private func getStep() -> Int {
        if step != 0 {
            return fetchStep()
        }
        return 0
    }
    
    // MARK: - Network Request
    /// Network request to get which step
    private func fetchStep() -> Int {
        // request network
        return 1
    }
    
    /// Request data about stuff from backend
    private func fetchData() -> Data { return Data() }
}

