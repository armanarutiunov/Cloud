public enum HTTPStatus: Sendable, Equatable {
    case ok
    case created
    case accepted
    case noContent
    case notModified
    case badRequest
    case unauthorized
    case forbidden
    case notFound
    case tooManyRequests
    case internalServerError
    case badGateway
    case serviceUnavailable
    case unknown(Int)

    var code: Int {
        switch self {
        case .ok: return 200
        case .created: return 201
        case .accepted: return 202
        case .noContent: return 204
        case .notModified: return 304
        case .badRequest: return 400
        case .unauthorized: return 401
        case .forbidden: return 403
        case .notFound: return 404
        case .tooManyRequests: return 429
        case .internalServerError: return 500
        case .badGateway: return 502
        case .serviceUnavailable: return 503
        case .unknown(let code): return code
        }
    }

    init(_ code: Int) {
        switch code {
        case 200: self = .ok
        case 201: self = .created
        case 202: self = .accepted
        case 204: self = .noContent
        case 304: self = .notModified
        case 400: self = .badRequest
        case 401: self = .unauthorized
        case 403: self = .forbidden
        case 404: self = .notFound
        case 429: self = .tooManyRequests
        case 500: self = .internalServerError
        case 502: self = .badGateway
        case 503: self = .serviceUnavailable
        default: self = .unknown(code)
        }
    }
}
