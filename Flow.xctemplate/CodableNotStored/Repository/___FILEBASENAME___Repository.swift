import SwiftRepository
import PromiseKit

struct ___VARIABLE_productName___Repository: Repository, Syncable {

    let remote: RemoteStoreCodable<___VARIABLE_productName___>
    
    func load() -> Promise<___VARIABLE_productName___> {
        remote.requestObject(request: Request.___VARIABLE_productName___.get())
    }
}
