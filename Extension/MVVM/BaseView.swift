import UIKit

class BaseView: UIView, ViewProtocol {
    
    override init(frame: CGRect = CGRect(x: 0, y: 0, width: 320, height: 480)) {
        super.init(frame: frame)
        configureView()
        addSubviews()
    }
    
    required public init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        configureView()
        addSubviews()
    }
    
    public func configureView() {
        
    }
    
    public func addSubviews() {
        
    }
    
    public func makeConstraints(vc: UIViewController) {
        
    }
}
