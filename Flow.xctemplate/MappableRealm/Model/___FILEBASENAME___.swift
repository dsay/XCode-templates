import ObjectMapper
import RealmSwift

class ___VARIABLE_productName___: Object, Mappable {

    @objc dynamic var id: String = ""

    override class func primaryKey() -> String? {
        return #keyPath(id)
    }
    
    required convenience init?(map: Map) {
        guard let id = map.JSON["id"] as? String, id.isEmpty == false else {
            return nil
        }
        self.init()
    }
    
    public func mapping(map: Map) {
        
    }
}
