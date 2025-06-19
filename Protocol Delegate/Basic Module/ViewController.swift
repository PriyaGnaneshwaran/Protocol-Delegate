//
//  ViewController.swift
//  Protocol Delegate
//
//  Created by Priya Gnaneshwaran on 09/05/25.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var lblName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.lblName.text = "Waiting for data"
    }

    @IBAction func actionNextScreen(_ sender: UIButton) {
        guard let nav = self.storyboard?.instantiateViewController(withIdentifier: "NextViewController") as? NextViewController else {
            return
        }
        nav.delegate = self
        self.navigationController?.pushViewController(nav, animated: true)
    }
}

extension ViewController: DataPassingDelegate{
    
    func didEnterData(_ data: String) {
        print("Delegate method called with data: \(data)")
        self.lblName.text = data
    }
}
