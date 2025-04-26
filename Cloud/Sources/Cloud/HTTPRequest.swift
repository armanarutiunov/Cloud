import Foundation

public protocol HTTPRequest: Sendable, Equatable, CustomStringConvertible {
    var id: UUID { get }
    var httpMethod: HTTPMethod { get }
    var endpoint: Endpoint { get }
    var parameters: [String: String]? { get }
    var bodyData: Data? { get }
    var httpHeaders: [HTTPHeader] { get set }
    var urlRequest: URLRequest { get }
}

extension HTTPRequest {
    public func adding(headers: HTTPHeader...) -> Self {
        var request = self
        request.httpHeaders += headers
        return request
    }
}

// MARK: - CustomStringConvertible
extension HTTPRequest {
    public var description: String {
        "\(httpMethod.description) \(endpoint.url)"
    }
}
