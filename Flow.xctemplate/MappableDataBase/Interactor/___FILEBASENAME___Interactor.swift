import PromiseKit

class ___VARIABLE_productName___Interactor {

    struct Dependencies {
        let repository: ___VARIABLE_productName___Repository
    }

    let dp: Dependencies

    init(dependencies: Dependencies) {
        self.dp = dependencies
    }
    
    func load() -> Promise<___VARIABLE_productName___> {
        dp.repository.load()
    }
}
