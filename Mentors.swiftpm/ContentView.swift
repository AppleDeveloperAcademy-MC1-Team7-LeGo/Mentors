import SwiftUI

struct ContentView: View {
    @State private var selectedTab = 0
    var body: some View {
        TabView(selection: $selectedTab) {
            Text("")
                .tabItem {
                    Image(systemName: "doc.plaintext")
                }.tag(1)
            Text("")
                .tabItem {
                    Image(systemName: "square.on.square.badge.person.crop")
                }.tag(2)
            Home()
                .tabItem {
                    Image(systemName: "house")
                }.tag(0)
            NavigationView {
                Chat()
            }
            .tabItem {
                NavigationLink {
                    Chat()
                } label: {
                    Image(systemName: "ellipsis.message")
                }
            }.tag(3)
            Text("")    
                .tabItem {
                    Image(systemName: "person.circle")
                }.tag(4)
        }
    }
}

// tabItem 각각에 tag를 0부터 4까지 달아주고 @State private var selectedTab에 앱을 켜면 열 tab의 tag를 적어주면 해당 tabItem부터 열립니다.
