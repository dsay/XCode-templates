import UIKit

extension ___VARIABLE_productName___ {
    
    class View: BaseView {
        
        @Layout var vertical = UIStackView()
        @Layout var scrollView = UIScrollView()
        
        // MARK: - lifecycle

        override func configureView() {
            vertical.axis = .vertical
            vertical.distribution = .fill
            vertical.isLayoutMarginsRelativeArrangement = true
        }
        
        override func addSubviews() {
            addSubview(scrollView)
            scrollView.addSubview(vertical)
        }
        
        override func makeConstraints(vc: UIViewController) {
            NSLayoutConstraint.activate([
                scrollView.topAnchor.constraint(equalTo: topAnchor),
                scrollView.leftAnchor.constraint(equalTo: leftAnchor),
                scrollView.rightAnchor.constraint(equalTo: rightAnchor),
                scrollView.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])
            
            NSLayoutConstraint.activate([
                vertical.widthAnchor.constraint(equalTo: scrollView.widthAnchor),
                vertical.leftAnchor.constraint(equalTo: scrollView.leftAnchor),
                vertical.rightAnchor.constraint(equalTo: scrollView.rightAnchor),
                vertical.topAnchor.constraint(equalTo: scrollView.topAnchor),
                vertical.bottomAnchor.constraint(equalTo: scrollView.bottomAnchor)
            ])
        }
    }
}
