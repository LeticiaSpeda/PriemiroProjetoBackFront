import UIKit

extension UIView {
    func enableViewCode() {
        translatesAutoresizingMaskIntoConstraints = false
    }
}

protocol ViewCode {
    func commonInit()
    func setupHierarchy()
    func setupConstraints()
    func setupStyle()
}

extension ViewCode {
    func commonInit() {
        setupStyle()
        setupHierarchy()
        setupConstraints()
    }

    func setupStyle() {
        
    }
}
