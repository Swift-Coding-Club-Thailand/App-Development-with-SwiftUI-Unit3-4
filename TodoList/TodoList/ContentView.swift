import SwiftUI

struct ContentView: View {
    let tasks = [
        Task(title: "Buy groceries", status: .todo),
        Task(title: "Finish project", status: .inProgress),
        Task(title: "Call mom", status: .done),
        Task(title: "Call mom", status: .done)
    ]
    
    var body: some View {
            VStack(spacing: 20) {
                Text("Task List")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                
                ForEach(tasks, id: \.title) { task in
                    HStack {
                        Text(task.title)
                            .font(.title)
                            .fontWeight(.bold)
                        Spacer()
                        
                        Text(task.status.rawValue.capitalized)
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(statusColor(for: task.status))
                            .padding(.horizontal, 12)
                            .padding(.vertical, 6)
                            .background(statusBackgroundColor(for: task.status))
                            .cornerRadius(10)
                    }
                    .padding(.horizontal)
                    .padding(.vertical, 8)
                    .background(.ultraThinMaterial)
                    .cornerRadius(15)
                }
            }
            .padding()
    }
    
    func statusColor(for status: TaskStatus) -> Color {
        switch status {
        case .todo:
            return .yellow
        case .inProgress:
            return .orange
        case .done:
            return .green
        }
    }
    
    func statusBackgroundColor(for status: TaskStatus) -> Color {
        switch status {
        case .todo:
            return .yellow.opacity(0.2)
        case .inProgress:
            return .orange.opacity(0.2)
        case .done:
            return .green.opacity(0.2)
        }
    }
}

#Preview {
    ContentView()
}
