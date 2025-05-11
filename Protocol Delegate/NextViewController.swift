//
//  NextViewController.swift
//  Protocol Delegate
//
//  Created by Priya Gnaneshwaran on 11/05/25.
//

protocol DataPassingDelegate: AnyObject {
    func didEnterData(_ data: String)
}

import UIKit

class NextViewController: UIViewController {
        
    weak var delegate: DataPassingDelegate?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func actionBackScreen(_ sender: UIButton) {
        delegate?.didEnterData("Hello from Second Screen...!!!!")
        self.navigationController?.popViewController(animated: true)
    }
}
