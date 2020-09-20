import SwiftRepository
import PromiseKit

struct ___VARIABLE_productName___Repository: Repository, Syncable {

    let remote: RemoteStoreMappable<___VARIABLE_productName___>
    let local: LocalStoreRealm<___VARIABLE_productName___>

    func load() -> Promise<___VARIABLE_productName___> {
        firstly {
            remote.requestObject(request: Request.___VARIABLE_productName___.get())
        }.then {
            self.local.save($0)
        }
    }
}
