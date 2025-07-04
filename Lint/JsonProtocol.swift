import Foundation

class JsonProtocol: LintProtocol {
    func format(text: String) -> String {
        return ""
    }
    
    func minify(text: String) -> String {
        return ""
    }
    
    func stringify(text: String) -> String {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        guard let data = try? encoder.encode(text) else { return "" }
        return String(data: data, encoding: .utf8) ?? ""
    }
}
