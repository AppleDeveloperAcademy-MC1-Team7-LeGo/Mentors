//
//  home1.swift
//  Mentors
//
//  Created by 손서연 on 2023/03/27.
//

import SwiftUI

struct Home: View {
    @State private var isNavigate: Bool = false
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text("러너 님,\n오늘도 챌린지 힘내세요☺️")
                    .font(Font.custom("Apple SD Gothic Neo", size: 28))
                    .fontWeight(.bold)
                    .foregroundColor(Color(red: 0.1607843137254902, green: 0.1607843137254902, blue: 0.1607843137254902))
                    .padding(.top, 44)
                
                //진행 중인 멘토링 기록하기
                //멘토링 시작 이후에 활성화되도록 만들어야해요
                    Button {
                    
                } label: {
                    Text("진행 중인 멘토링 기록하기")
                        .fontWeight(.bold)
                        .font(Font.custom("Apple SD Gothic Neo", size: 20))
                        .frame(maxWidth: 400, minHeight: 48)
                        .background(Color(hex: "E8585E"))
                        .foregroundColor(Color.init(hex: "f9f9f9"))
                        .cornerRadius(10)
                        
                }
                .padding(.top, 40)
                
                //내비게이션
                NavigationLink(isActive: $isNavigate) {
                    Sending1()
                } label: {
                    HomeMentoringButton(title: "내 멘토링 사연 보내기", isSelected: true, action: {
                        isNavigate = true
                    })
                    .frame(width: UIScreen.main.bounds.width - 52, height: 100)
                    .cornerRadius(10)
                    .padding(.top, 68)
                }
                NavigationLink(isActive: $isNavigate) {
                    Sending1() //연결되는 뷰 링크 변경해야함
                } label: {
                    HomeMentoringButton(title: "내 멘토링 기록 모아보기", isSelected: true, action: {
                        isNavigate = true
                    })
                    .frame(width: UIScreen.main.bounds.width - 52, height: 100)
                    .cornerRadius(10)
                    .padding(.top, 30)
                }
                Spacer()
                
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
                    Text("")
                        .tabItem {
                            Image(systemName: "house")
                        }
                    Text("")
                        .tabItem {
                            Image(systemName: "ellipsis.message")
                        }
                    Text("")
                        .tabItem {
                            Image(systemName: "person.circle")
                        }
                }
            }
            .padding(.horizontal, 26)
        }
    }
    
    
    
    
    
    
    
    //    spending1로 연결되는 내비게이션뷰
    //    {
    //        NavigationView {
    //            NavigationLink(isActive: $isNavigate) {
    //                Sending1()
    //            } label: {
    //                Button {
    //                    isNavigate = true
    //                } label: {
    //                    Text("다음 화면으로")
    //                        .fontWeight(.semibold)
    //                        .frame(width: 200, height: 100)
    //                        .cornerRadius(8)
    //                        .border(Color.blue, width: 1)
    //                }
    //            }
    //        }
    //    }
}

struct home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
