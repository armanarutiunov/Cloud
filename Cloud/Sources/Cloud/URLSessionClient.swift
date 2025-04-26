import Foundation

public struct URLSessionClient: Sendable {

    public var fetchData: @Sendable (URLRequest) async throws -> (Data, URLResponse)

    public init(fetchData: @escaping @Sendable (URLRequest) async throws -> (Data, URLResponse)) {
        self.fetchData = fetchData
    }
}
