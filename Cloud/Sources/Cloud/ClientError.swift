public enum ClientError: Error, Equatable {
    case decoding(String)
}

extension ClientError {
    public static func == (lhs: ClientError, rhs: ClientError) -> Bool {
        switch (lhs, rhs) {
        case (.decoding(let lhsMessage), .decoding(let rhsMessage)):
            return lhsMessage == rhsMessage
        }
    }
}
