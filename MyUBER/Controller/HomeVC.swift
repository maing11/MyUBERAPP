//
//  ViewController.swift
//  MyUBER
//
//  Created by Mai Nguyen on 4/16/19.
//  Copyright © 2019 Mai Nguyen. All rights reserved.
//

import UIKit
import MapKit
import RevealingSplashView


class HomeVC: UIViewController, MKMapViewDelegate {
    var delegate: CenterVCDelegate?
    
    let revealingSplashView = RevealingSplashView(iconImage: UIImage(named: "launchScreenIcon")!, iconInitialSize: CGSize(width: 80, height: 80), backgroundColor: UIColor.white)

    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var actionBtn: RoundedShadowButton!
    
    override func viewDidLoad() {
          super.viewDidLoad()
        mapView.delegate = self

        self.view.addSubview(revealingSplashView)
        revealingSplashView.animationType = SplashAnimationType.heartBeat
        revealingSplashView.heartAttack = true
        
        
        
        
    }

    @IBAction func actionBtnWasPressed(_ sender: Any) {
        actionBtn.animateButton(shouldLoad: true , with: nil)
    }
  
    
    @IBAction func MenuBtnWasPressed(_ sender: Any) {
        delegate?.toggleLeftPanel()
    }
    
}

