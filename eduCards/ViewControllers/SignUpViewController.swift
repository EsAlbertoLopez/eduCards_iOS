import UIKit

class SignUpViewController: UIViewController {

    @IBOutlet weak var tvSubtitle: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBarItemColor()
    }
    
    func setTabBarItemColor() {
        self.tabBarController?.tabBar.tintColor = UIColor(red: 0, green: 0.443, blue: 0.118, alpha: 1)
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
    
    override func viewDidAppear(_ animated: Bool) {
        setTabBarItemColor()
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
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
    }
}
