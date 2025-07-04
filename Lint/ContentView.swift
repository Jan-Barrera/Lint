import SwiftUI

struct ContentView: View {
    @StateObject private var lintUtil = LintUtil()
    @State private var inputText: String = ""
    @State private var type = "JSON"
    var types: [String]  = ["JSON", "YAML", "XML", "SQL"]

    var body: some View {
        VStack(alignment: .leading) {
            VStack {
                Picker("Type", selection: $type) {
                    ForEach(types, id: \.self) { value in
                        Text(value)
                    }
                }
                .pickerStyle(.menu)
            }
            .navigationTitle("Lint")
            .frame(width: 200)

            
            TextEditor(text: $inputText)
                .font(.system(.body, design: .monospaced))
                .lineSpacing(4)
                .disableAutocorrection(true)
                .padding()
                .foregroundColor(.white)
                .cornerRadius(8)
                .frame(minHeight: 300, maxHeight: .infinity)
                .padding(.horizontal)
            
            HStack(spacing: 20) {
                Button("Format") {
                    inputText = lintUtil.lint(type: type, command: "format", text: inputText)
                }
                .buttonStyle(.bordered)
                
                Button("Clear") {
                    inputText = ""
                }
                .buttonStyle(.bordered)
                Button("Minify") {
                    inputText = lintUtil.lint(type: type, command: "minify", text: inputText)
                }
                .buttonStyle(.bordered)
                
                Button("Stringify") {
                    inputText = lintUtil.lint(type: type, command: "stringify", text: inputText)
                }
                .buttonStyle(.bordered)
            }
            
            Spacer()
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
