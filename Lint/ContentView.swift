import SwiftUI

struct ContentView: View {
    @State private var inputText: String = ""

    var body: some View {
        VStack(alignment: .leading) {
            TextEditor(text: $inputText)
              .frame(height:300, alignment: .center)
              .lineSpacing(10)
              .padding()
                                 
            
            HStack(spacing: 20) {
                Button("Format") {
                    inputText = ""
                }
                .buttonStyle(.bordered)

                Button("Clear") {
                    inputText = ""
                }
                .buttonStyle(.bordered)

                Button("Compress") {
                    inputText = ""
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
