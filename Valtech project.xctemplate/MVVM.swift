import UIKit

enum LifeCycle {
    case didLoad, didAppear, willAppear, didDisappear, willDisappear, didDeinit
}

protocol ViewControllerOutput: class {
    
    func change(lifeCycle: LifeCycle)
}

protocol ViewModelOutput: class {

    func startActivity()
    func stopActivity()
    
    func catchError(_ error: Error)
}

extension ViewControllerOutput {

    func change(lifeCycle: LifeCycle) {
        
    }
}

extension ViewModelOutput where Self: UIViewController {

    func startActivity() {
    }

    func stopActivity() {
    }

    func showAlert(_ alert: String?) {
        showError(alert, nil)
    }

    func showAlert(_ alert: String?, _ handler: (() -> Void)?) {
        showError(alert, handler)
    }

    func catchError(_ error: Error) {
        showError(error.localizedDescription)
    }

    fileprivate func showError(_ error: String?, _ handler: (() -> Void)? = nil) {
        let alertController = UIAlertController(title: "",
                                                message: error,
                                                preferredStyle: .alert)

        let defaultAction = UIAlertAction(title: "OK", style: .default, handler: { _ in
            handler?()
        })
        alertController.addAction(defaultAction)

        present(alertController, animated: true, completion: nil)
    }

    func show(title: String?,
              message: String?,
              okTitle: String?,
              cancelTitle: String?,
              okHandler: (() -> Void)?,
              cancelHandler: (() -> Void)? = nil) {

        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)

        if let cancelHandler = cancelHandler {
            let defaultAction = UIAlertAction(title: cancelTitle, style: .cancel, handler: { _ in
                cancelHandler()
            })
            alert.addAction(defaultAction)
        }

        if let handler = okHandler {
            let openAction = UIAlertAction(title: okTitle, style: .default, handler: { _ in
                handler()
            })
            alert.addAction(openAction)
        }
        present(alert, animated: true, completion: nil)
    }
}

extension UIViewController: ViewModelOutput { }
