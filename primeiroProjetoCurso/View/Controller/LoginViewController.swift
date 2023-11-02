import UIKit

final class LoginViewController: UIViewController {

    private var screen = LoginSreen()

    override func viewDidLoad() {
        super.viewDidLoad()
        screen = LoginSreen()
        view = screen
    }
}
