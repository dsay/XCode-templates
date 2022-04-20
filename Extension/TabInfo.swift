import UIKit

enum TabBarItem {

    var tabInfo: TabInfo {
        switch self {
       
        }
    }
}

struct TabInfo {
    let title: String
    let image: UIImage?
    let selectedImage: UIImage?
}

extension UIViewController {
    
    func configure(for tab: TabBarItem) {
        let tabInfo = tab.tabInfo
        tabBarItem = UITabBarItem.init(title: tabInfo.title,
                                       image: tabInfo.image,
                                       selectedImage: tabInfo.selectedImage)
    }
    
}
