import SwiftUI

struct ContentView: View {
    @State private var index: Int = 2
    
    var body: some View {
        //탭바
        //홈 버튼이 기본 활성화가 되어야 해요
        //각 버튼에서 링크 연결 필요한 것들이 있어요
        //왼쪽부터 [커뮤니티, 멘토 모음, 홈, 채팅, 내 정보]입니다
        if #available(iOS 16.0, *) {
            TabView(selection: $index) {
                Text("")
                    .toolbar(.hidden, for: .tabBar)
                    .tabItem {
                        Image(systemName: "doc.plaintext")
                    }
                    .tag(0)
                Text("")
                    .toolbar(.hidden, for: .tabBar)
                    .tabItem {
                        Image(systemName: "square.on.square.badge.person.crop")
                    }
                    .tag(1)
                Home()
                    .toolbar(.hidden, for: .automatic)
                    .tabItem {
                        Image(systemName: "house")
                    }
                    .tag(2)
                NavigationView {
                    Chat()
                }
                .tabItem {
                    NavigationLink {
                        Chat()
                            .toolbar(.hidden, for: .tabBar)
                    } label: {
                        Image(systemName: "ellipsis.message")
                    }
                }
                .tag(3)
                Text("")
                    .toolbar(.hidden, for: .tabBar)
                    .tabItem {
                        Image(systemName: "person.circle")
                    }
                    .tag(4)
            }
            .navigationBarBackButtonHidden(true)
            
        } else {
            fatalError("iOS 16 이상만 작동해요")
        }
    }
}
