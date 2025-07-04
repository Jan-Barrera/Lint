import Foundation

protocol LintProtocol: ObservableObject {
    func format(text: String) -> String
    func stringify(text: String) -> String
    func minify(text: String) -> String
}
