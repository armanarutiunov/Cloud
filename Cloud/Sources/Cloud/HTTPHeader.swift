public protocol HTTPHeader: Sendable {
    var key: String { get }
    var value: String { get }
}

extension [HTTPHeader] {

    public var dictionary: [String: String] {
        var headers = [String: String]()
        self.forEach { headers[$0.key] = $0.value }
        return headers
    }
}
