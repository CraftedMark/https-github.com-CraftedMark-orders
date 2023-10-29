import SwiftUI
import SwiftData

struct PeopleListView: View {
    @Environment(\.modelContext) private var modelContext
    @Query(entity: People.self) private var people: FetchedResults<People>

    var body: some View {
        List(people) { person in
            VStack(alignment: .leading) {
                Text(person.customerName)
                    .font(.headline)
                Text("Email: \(person.email)")
                    .font(.subheadline)
            }
        }
        .navigationTitle("People List")
    }
}

struct PeopleListView_Previews: PreviewProvider {
    static var previews: some View {
        PeopleListView()
    }
}
