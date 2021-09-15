//
//  ViewController.swift
//  HwSwiftProj6
//
//  Created by Alex Wibowo on 15/9/21.
//

import UIKit

class ViewController: UIViewController {
    
    
    override func loadView() {
        let mainView = UIView()
        
        let label1 = UILabel()
        label1.text = "THESE"
        label1.backgroundColor = .red
        label1.translatesAutoresizingMaskIntoConstraints = false
        
        let label2 = UILabel()
        label2.text = "ARE"
        label2.backgroundColor = .blue
        label2.translatesAutoresizingMaskIntoConstraints = false
        
        let label3 = UILabel()
        label3.text = "SOME"
        label3.backgroundColor = .yellow
        label3.translatesAutoresizingMaskIntoConstraints = false
        
        let label4 = UILabel()
        label4.text = "AWESOME"
        label4.backgroundColor = .green
        label4.translatesAutoresizingMaskIntoConstraints = false
    
        
        mainView.addSubview(label1)
        mainView.addSubview(label2)
        mainView.addSubview(label3)
        mainView.addSubview(label4)
        
        let dictionary = [
            "label1": label1,
            "label2": label2,
            "label3": label3,
            "label4": label4,
        ]
        
        
        let metrics = ["labelHeight": 88]
        mainView.addConstraints(
            NSLayoutConstraint.constraints(withVisualFormat: "H:|[label1]|", options: [], metrics: [:], views: dictionary)
        )
        mainView.addConstraints(
          
            NSLayoutConstraint.constraints(withVisualFormat: "H:|[label2]|", options: [], metrics: [:], views: dictionary)
        )
        
        mainView.addConstraints(
            NSLayoutConstraint.constraints(withVisualFormat: "H:|[label3]|", options: [], metrics: [:], views: dictionary)
        )
        mainView.addConstraints(
            NSLayoutConstraint.constraints(withVisualFormat: "H:|[label4]|", options: [], metrics: [:], views: dictionary)
        )
        
        mainView.addConstraints(
            NSLayoutConstraint.constraints(withVisualFormat: "V:|[label1(labelHeight)]-[label2(label1)]-[label3(label1)]-[label4(label1)]-(>=10)-|", options: [], metrics: metrics, views: dictionary)
        )
        
        
        view = mainView
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }


}

