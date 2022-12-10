import UIKit

extension ___VARIABLE_productName___ {
    
    class View: BaseView {
        
        @Layout var segmentControl = UISegmentedControl()
        @Layout var container = UIView()
        
        let pageController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal)
        
        // MARK: - lifecycle
        
        override func configureView() {
            container.backgroundColor = .clear
        }
        
        override func addSubviews() {
            addSubview(segmentControl)
            addSubview(container)
        }
        
        override func makeConstraints(vc: UIViewController) {
            
            NSLayoutConstraint.activate([
                segmentControl.topAnchor.constraint(equalTo: topAnchor),
                segmentControl.leftAnchor.constraint(equalTo: leftAnchor),
                segmentControl.rightAnchor.constraint(equalTo: rightAnchor)
            ])
            
            NSLayoutConstraint.activate([
                container.topAnchor.constraint(equalTo: segmentControl.bottomAnchor),
                container.leftAnchor.constraint(equalTo: leftAnchor),
                container.rightAnchor.constraint(equalTo: rightAnchor),
                container.bottomAnchor.constraint(equalTo: bottomAnchor)
            ])
            
            vc.addChild(pageController)
            pageController.view.frame = container.bounds
            container.addSubview(pageController.view)
            pageController.didMove(toParent: vc)
        }
        
        override func layoutSubviews() {
            super.layoutSubviews()
            pageController.view.frame = container.bounds
        }
    }
}
