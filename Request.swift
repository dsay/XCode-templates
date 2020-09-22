import SwiftRepository

class Request: RequestProvider {
    
    enum BodyEncode {
        case none
        case json([String: Any]?)
        case url([String: Any]?)
        
        var encoder: RequestComposer {
            switch self {
            case .none:
                return BodyConverter()
            case .json(let body):
                return JSONBodyConverter(json: body)
            case .url(let body):
                return URLBodyConverter(parameters: body)
            }
        }
    }
    
    var method: HTTPMethod
    
    var url: String
    
    var path: URLComposer
    
    var query: URLComposer
    
    var headers: RequestComposer
    
    var body: RequestComposer

    init(url: String = Environment.current.baseURL,
         method: HTTPMethod = .get,
         path: URLComposer = "",
         query: [String: String?] = [:],
         headers: [String: String] = [:],
         body: BodyEncode = .none)
    {
        self.url = url
        self.method = method
        self.path = path
        self.query = query
        self.headers = headers
        self.body = body.encoder
    }
}

public struct BodyConverter: RequestComposer {

    public func compose(into request: URLRequest) throws -> URLRequest {
        return request
    }
}
