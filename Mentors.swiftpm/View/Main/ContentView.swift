import SwiftUI

struct ContentView: View {
    @State private var index: Int = 2
    @State var isShowRecordButton: Bool = false
    private let disableIndex = [0, 1, 4]
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
                Home(isShowRecordButton: $isShowRecordButton)
                    .toolbar(.hidden, for: .automatic)
                    .tabItem {
                        Image(systemName: "house")
                    }
                    .tag(2)
                NavigationView {
                    Chat(isShowRecordButton: $isShowRecordButton)
                }
                .tabItem {
                    NavigationLink {
                        Chat(isShowRecordButton: $isShowRecordButton)
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
            .onChange(of: index) { _ in
                if disableIndex.contains(index) {
                    index = 2
                }
            }
            
        } else {
            fatalError("iOS 16 이상만 작동해요")
        }
    }
}

// tabItem 각각에 tag를 0부터 4까지 달아주고 @State private var selectedTab에 앱을 켜면 열 tab의 tag를 적어주면 해당 tabItem부터 열립니다.
