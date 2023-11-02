import UIKit

protocol LoginScreenProtocol: AnyObject {
    func tappedLoginButton()
}

final class LoginSreen: UIView, ViewCode {

    private weak var delegate: LoginScreenProtocol?

    private lazy var welcomeLabel: UILabel = {
        let label = UILabel()
        label.text = "Bem Vindo!"
        label.textColor = .white
        label.font = .systemFont(ofSize: 40, weight: .bold)
        label.enableViewCode()
        return label
    }()

    private lazy var emailTextField: UITextField = {
        let textField = UITextField()
        textField.layer.cornerRadius = 10
        textField.backgroundColor = .white.withAlphaComponent(0.8)
        textField.attributedPlaceholder = NSAttributedString(string: " Digite seu email", attributes: [NSAttributedString.Key.foregroundColor : UIColor.gray])
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

    private lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("Login", for: .normal)
        button.setTitleColor(.white, for: .normal)
        button.backgroundColor = .magenta.withAlphaComponent(0.6)
        button.layer.cornerRadius = 10
        button.enableViewCode()
        button.addTarget(self, action: #selector(tappedLoginButton), for: .touchUpInside)
        return button
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    @available(*, unavailable)
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    @objc func tappedLoginButton() {
        delegate?.tappedLoginButton()
    }

    func delegate(_ delegate: LoginScreenProtocol) {

    }

    func setupHierarchy() {
        addSubview(welcomeLabel)
        addSubview(emailTextField)
        addSubview(passwordTextField)
        addSubview(loginButton)
    }

    func setupConstraints() {
        NSLayoutConstraint.activate([
            welcomeLabel.topAnchor.constraint(
                equalTo: safeAreaLayoutGuide.topAnchor,
                constant: 16
            ),
            welcomeLabel.centerXAnchor.constraint(equalTo: centerXAnchor),

            emailTextField.topAnchor.constraint(equalTo: welcomeLabel.bottomAnchor, constant: 20),
            emailTextField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            emailTextField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            emailTextField.heightAnchor.constraint(equalToConstant: 30),

            passwordTextField.topAnchor.constraint(equalTo: emailTextField.bottomAnchor, constant: 16),
            passwordTextField.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            passwordTextField.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            passwordTextField.heightAnchor.constraint(equalToConstant: 30),

            loginButton.topAnchor.constraint(equalTo: passwordTextField.bottomAnchor, constant: 16),
            loginButton.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 16),
            loginButton.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -16),
            loginButton.heightAnchor.constraint(equalToConstant: 30),

        ])
    }
    
    func setupStyle() {
        backgroundColor = .magenta.withAlphaComponent(0.6)
    }

    func setupTextFieldDelegate(_ delegate: UITextFieldDelegate) {
        emailTextField.delegate = delegate
        passwordTextField.delegate = delegate
    }
}

