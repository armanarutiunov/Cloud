import Foundation

public struct CloudClient: Sendable {

    public var _send: @Sendable (_ request: any HTTPRequest) async throws -> Data

    public func send<T: Decodable & Sendable>(_ request: any HTTPRequest) async throws -> T {
        let data = try await _send(request)

        do {
            return try JSONDecoder().decode(T.self, from: data)
        } catch {
            throw ClientError.decoding(error.localizedDescription)
        }
    }
}
