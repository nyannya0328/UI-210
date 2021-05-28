//
//  ViewController.swift
//  UI-210
//
//  Created by にゃんにゃん丸 on 2021/05/28.
//

import UIKit
import SwiftUI

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //self.navigationController?.navigationBar.isHidden = true
        self.navigationController?.navigationBar.barStyle = .black
        
        exetractView()
        
        
    }
    
    func exetractView(){
        
        let hostview = UIHostingController(rootView: Home())
        
        hostview.view.translatesAutoresizingMaskIntoConstraints = false
        
        self.view.addSubview(hostview.view)
        
        let contains = [
        
            hostview.view.topAnchor.constraint(equalTo: view.topAnchor),
            hostview.view.bottomAnchor.constraint(equalTo: view.bottomAnchor),
            hostview.view.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            hostview.view.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            hostview.view.heightAnchor.constraint(equalTo: view.heightAnchor),
            hostview.view.widthAnchor.constraint(equalTo: view.widthAnchor),
            
        
        
        ]
        
        self.view.addConstraints(contains)
        
        
        
        
    }


}

