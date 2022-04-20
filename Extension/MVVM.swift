import NVActivityIndicatorView

enum LifeCycle {
    case didLoad, didAppear, willAppear, didDisappear, willDisappear, didDeinit
}

protocol ViewControllerOutput: AnyObject {
    
    func change(lifeCycle: LifeCycle)
}

protocol ViewModelOutput: ActivityObserver {

}

protocol ActivityObserver: AnyObject, NVActivityIndicatorViewable {

    func startActivity()
    func stopActivity()
    
    func catchError(_ error: Error)
}

extension ViewControllerOutput {

    func change(lifeCycle: LifeCycle) {
        
    }
}

extension ActivityObserver where Self: UIViewController {

    func startActivity() {
        startAnimating()
    }

    func stopActivity() {
        stopAnimating()
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
}
