//
//  GeneralViewController.swift
//  eduCards
//
//  Created by Alberto López Reyes on 25/11/20.
//

import UIKit

class GeneralViewController: UIViewController {
    
    @IBOutlet weak var tvSubtitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "General"
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        if UIDevice.current.orientation.isLandscape {
            switch UIDevice.current.userInterfaceIdiom {
            case .phone:
                tvSubtitle?.textAlignment = .center
                break
            case .pad:
                tvSubtitle?.textAlignment = .left
                break
            case .unspecified: break
            case .tv: break
            case .carPlay: break
            case .mac: break
            @unknown default: break
            }
        } else {
            tvSubtitle?.textAlignment = .left
        }
    }
}