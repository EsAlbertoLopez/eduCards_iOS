import UIKit

class CardViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBarItemColor()
    }
    
    func setTabBarItemColor() {
        self.tabBarController?.tabBar.tintColor = UIColor(red: 0.596, green: 0.043, blue: 0.31, alpha: 1)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        setTabBarItemColor()
    }
}
