import UIKit

final class LoginViewController: UIViewController, ViewCode {

    private lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Bem Vindo!"
        label.textColor = .white
        label.font = .systemFont(ofSize: 40, weight: .bold)
        label.enableViewCode()
        return label
    }()

    private lazy var nameTextField: UITextField = {
        let textField = UITextField()
        textField.layer.cornerRadius = 10
        textField.backgroundColor = .white.withAlphaComponent(0.8)
        textField.attributedPlaceholder = NSAttributedString(string: " Digite seu nome", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        textField.keyboardAppearance = .dark
        textField.enableViewCode()
        return textField
    }()

    private lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.layer.cornerRadius = 10
        textField.backgroundColor = .white.withAlphaComponent(0.8)
        textField.attributedPlaceholder = NSAttributedString(string: " Digite sua senha", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
        textField.isSecureTextEntry = true
        textField.keyboardAppearance = .dark
        textField.enableViewCode()
        return textField
    }()

    override func viewDidLoad() {
        super.viewDidLoad()
        commonInit()
    }

    func setupHierarchy() {
        view.addSubview(welcomeLabel)
        view.addSubview(nameTextField)
        view.addSubview(passwordTextField)
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(
                equalTo: view.safeAreaLayoutGuide.topAnchor,
                constant: 16
            ),
            welcomeLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),

            nameTextField.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 20),
            nameTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            nameTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            nameTextField.heightAnchor.constraint(equalToConstant: 30),

            passwordTextField.topAnchor.constraint(equalTo: nameTextField.bottomAnchor, constant: 16),
            passwordTextField.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16),
            passwordTextField.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -16),
            passwordTextField.heightAnchor.constraint(equalToConstant: 30),

        ])
    }
    
    func setupStyle() {
        view.backgroundColor = .magenta.withAlphaComponent(0.6)
    }
}

