import Foundation

public protocol Endpoint: Sendable {
    var path: String { get }
    var baseURL: URL { get }
}

extension Endpoint {

    var url: URL {
        URL(string: path, relativeTo: baseURL)!
    }
}
