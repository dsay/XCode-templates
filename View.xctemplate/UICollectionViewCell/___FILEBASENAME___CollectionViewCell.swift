import UIKit
import POPDataSource

class ___VARIABLE_productName___CollectionViewCell: UICollectionViewCell, ReuseIdentifier {
    
    struct Output {
        let action: () -> Void
    }
    
    var output: Output?
    
    @Layout var content = ___VARIABLE_productName___View()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        configureUI()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        configureUI()
    }
    
    private func configureUI() {
        backgroundColor = .clear
        
        contentView.addSubview(content)
        
        NSLayoutConstraint.activate([
            content.topAnchor.constraint(equalTo: contentView.topAnchor),
            content.leftAnchor.constraint(equalTo: contentView.leftAnchor),
            content.rightAnchor.constraint(equalTo: contentView.rightAnchor),
            content.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).setPriority(999)
        ])
    }
}

class ___VARIABLE_productName___View: UIView {

    override init(frame: CGRect = CGRect.zero) {
        super.init(frame: frame)
        configureUI()
    }

    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    private func configureUI() {
       
    }
}
