import SwiftUI

struct ContentView: View {
    var body: some View {
        //탭바
        //홈 버튼이 기본 활성화가 되어야 해요
        //각 버튼에서 링크 연결 필요한 것들이 있어요
        //왼쪽부터 [커뮤니티, 멘토 모음, 홈, 채팅, 내 정보]입니다
        TabView {
            Text("")
                .tabItem {
                    Image(systemName: "doc.plaintext")
                }
            Text("")
                .tabItem {
                    Image(systemName: "square.on.square.badge.person.crop")
                }
            Home()
                .tabItem {
                    Image(systemName: "house")
                }
            NavigationView {
                Chat()
                }
                .tabItem {
                    NavigationLink {
                        Chat()
                    } label: {
                        Image(systemName: "ellipsis.message")
                    }
                }
            Text("")
                .tabItem {
                    Image(systemName: "person.circle")
                }
        }
    }
}
