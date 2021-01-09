import UIKit

class ___VARIABLE_productName___View: UIView {

    @Layout var vertical = UIStackView()
    @Layout var scrollView = UIScrollView()

    override init(frame: CGRect = CGRect.zero) {
        super.init(frame: frame)
        configureView()
        addSubviews()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func configureView() {
        vertical.axis = .vertical
        vertical.distribution = .fill
        vertical.isLayoutMarginsRelativeArrangement = true
    }

    private func addSubviews() {
        addSubview(scrollView)
        scrollView.addSubview(vertical)
    }
    
    public func makeConstraints(vc: UIViewController) {
        NSLayoutConstraint.activate([
            vertical.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
            vertical.leftAnchor.constraint(equalTo: scrollView.leftAnchor),
            vertical.rightAnchor.constraint(equalTo: scrollView.rightAnchor),
            vertical.topAnchor.constraint(equalTo: scrollView.topAnchor),
            vertical.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
        ])
    }
}
