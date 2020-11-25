import UIKit

class StudentsViewController: UIViewController {

    @IBOutlet weak var tvSubtitle: UILabel!
    @IBOutlet weak var tbStudents: UITableView!
    
    private let arrTestCells = ["Test Student"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setTabBarItemColor()
    }
    
    func setTabBarItemColor() {
        self.tabBarController?.tabBar.tintColor = UIColor(red: 0.596, green: 0.043, blue: 0.31, alpha: 1)
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
}

extension StudentsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return arrTestCells.count
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "testCell", for: indexPath)
        cell.textLabel?.text = arrTestCells[indexPath.row]
        return cell
    }
}
