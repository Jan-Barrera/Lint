import Foundation
import SwiftyJSON


class LintUtil: ObservableObject {
    
    func lint(type: String, command: String, text: String) -> String {
        let lintProtocol = getProtocol(type: type)
        if (command == '')
        
        return lintJson(text: text)
    }
    
    func getProtocol(type: String) -> any LintProtocol {
        if (type == "JSON") {
            return JsonProtocol()
        } else {
            return JsonProtocol()
        }
    }
    
    func lintJson(text: String) -> String {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        guard let data = try? encoder.encode(text) else { return "" }
        return String(data: data, encoding: .utf8) ?? ""
    }
}
