import SwiftRepository
import PromiseKit

struct ___VARIABLE_productName___Repository: Repository, Syncable, Storable {

    struct Constants {
        static let key = String(describing: ___VARIABLE_productName___.self)
    }
    
    let remote: RemoteStoreMappable<___VARIABLE_productName___>
    let local: LocalStoreMappable<___VARIABLE_productName___>
    
    func load() -> Promise<___VARIABLE_productName___> {
        firstly {
            remote.requestObject(request: Request.___VARIABLE_productName___.get())
        }.then { item in
            self.save(item)
        }
    }
    
    func save(_ item: ___VARIABLE_productName___) -> Promise<___VARIABLE_productName___> {
        firstly{
            self.local.saveItem(user, at: Constants.key)
        }.then {
            self.local.getItem(from: Constants.key)
        }
    }
    
    func get() -> Promise<___VARIABLE_productName___> {
        self.local.getItem(from: Constants.key)
    }

    func delete() -> Promise<Void> {
        self.local.removeItem(from: Constants.key)
    }
}
