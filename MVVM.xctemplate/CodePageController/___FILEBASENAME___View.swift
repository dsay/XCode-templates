import UIKit

class ___VARIABLE_productName___View: UIView {

    @Layout var segmentControl = UISegmentedControl()
    @Layout var container = UIView()

    let pageController = UIPageViewController(transitionStyle: .scroll, navigationOrientation: .horizontal)
    
    override init(frame: CGRect = CGRect(x: 0, y: 0, width: 320, height: 480)) {
        super.init(frame: frame)
        configureView()
        addSubviews()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func configureView() {
        container.backgroundColor = .clear
    }

    private func addSubviews() {
        addSubview(segmentControl)
        addSubview(container)
    }
    
    public func makeConstraints(vc: UIViewController) {
        
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
