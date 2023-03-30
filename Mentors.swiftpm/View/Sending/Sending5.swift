//
//  SendingFiveView.swift
//  Mentors
//
//  Created by xnoag on 2023/03/28.
//

import SwiftUI

struct SendingFiveView: View {
    
    var body: some View {
       
        
        ScrollView {
            // 좌로 정렬 VStack
            VStack(alignment: .leading) {
                
                // VStack-Text
                Text("이 사연의 태그를 달아주세요")
                    .font(.custom("Apple SD Gothic Neo", size: 24))
                    .fontWeight(.bold)
                    .foregroundColor(Color(hex: "292929"))
                    .multilineTextAlignment(.leading)
                    .padding(.bottom, 7)
                
                // VStack-Text
                Text("멘토들이 이해하기 쉽도록 5개 이하루 적어주는 센스!")
                    .font(.custom("Apple SD Gothic Neo", size: 14))
                    .fontWeight(.regular)
                    .foregroundColor(Color(hex: "292929"))
                    .padding(.bottom, 30)
                
                // VStack-Group-하나의 Stack에 최대 10개 뷰만 가능해서 Group으로 묶음.
                Group {
                    // VStack-Group-HStack(1)
                    HStack { Button(action:{
                    }) {
                            Image(systemName: "pencil.tip")
                                .resizable()
                                .frame(width: 20)
                                .foregroundColor(Color(hex: "292929"))
                                .padding(10)
                        }
                        .background(Color(hex: "E5E2D7"))
                        .cornerRadius(10)
                        Button(action:{}) {
                            Tag(keywordText: "팀원이랑 싸웠어요", keywordBgColor: "FDF4D1")
                        }
                        Button(action:{}) {
                            Tag(keywordText: "협업", keywordBgColor: "FDF4D1")
                        }
                    }
                    .padding(.bottom, 5)
                    
                    // VStack-Group-HStack(2)
                    HStack {
                        Button(action:{}) {
                            Tag(keywordText: "소통", keywordBgColor: "FDF4D1")
                        }
                        ColorChangeImageButton(namename: "# 회고")
                        Button(action:{}) {
                            Tag(keywordText: "기록", keywordBgColor: "FDF4D1")
                        }
                        ColorChangeImageButton(namename: "# CBL")
                    }
                    .padding(.bottom, 5)
                    
                    // VStack-Group-HStack(3)
                    HStack {
                        Button(action:{}) {
                            Tag(keywordText: "Engage", keywordBgColor: "FDF4D1")
                        }
                        Button(action:{}) {
                            Tag(keywordText: "Investigate", keywordBgColor: "FDF4D1")
                        }
                        Button(action:{}) {
                            Tag(keywordText: "Act", keywordBgColor: "FDF4D1")
                        }
                    }
                    .padding(.bottom, 5)
                    
                    // VStack-Group-HStack(4)
                    HStack {
                        Button(action:{}) {
                            Tag(keywordText: "프레젠테이션", keywordBgColor: "FDF4D1")
                        }
                        Button(action:{}) {
                            Tag(keywordText: "스토리텔링", keywordBgColor: "FDF4D1")
                        }
                    }
                    .padding(.bottom, 5)
                    
                    // VStack-Group-HStack(5)
                    HStack {
                        Button(action:{}) {
                            Tag(keywordText: "Domain", keywordBgColor: "F9DEDF")
                        }
                        Button(action:{}) {
                            Tag(keywordText: "마케팅", keywordBgColor: "F9DEDF")
                        }
                        Button(action:{}) {
                            Tag(keywordText: "비즈니스", keywordBgColor: "F9DEDF")
                        }
                    }
                    .padding(.bottom, 5)
                    
                    // VStack-Group-HStack(6)
                    HStack {
                        Button(action:{}) {
                            Tag(keywordText: "Design", keywordBgColor: "DAEEC6")
                        }
                        Button(action:{}) {
                            Tag(keywordText: "UX", keywordBgColor: "DAEEC6")
                        }
                        Button(action:{}) {
                            Tag(keywordText: "UI", keywordBgColor: "DAEEC6")
                        }
                        Button(action:{}) {
                            Tag(keywordText: "HIG", keywordBgColor: "DAEEC6")
                        }
                    }
                    .padding(.bottom, 5)
                    
                    // VStack-Group-HStack(7)
                    HStack {
                        Button(action:{}) {
                            Tag(keywordText: "와이어프레임", keywordBgColor: "DAEEC6")
                        }
                        Button(action:{}) {
                            Tag(keywordText: "프로토타이핑", keywordBgColor: "DAEEC6")
                        }
                    }
                    .padding(.bottom, 5)
                    
                    // VStack-Group-HStack(8)
                    HStack {
                        Button(action:{}) {
                            Tag(keywordText: "Tech", keywordBgColor: "CEE1F3")
                        }
                        Button(action:{}) {
                            Tag(keywordText: "Swift", keywordBgColor: "CEE1F3")
                        }
                        Button(action:{}) {
                            Tag(keywordText: "SwiftUI", keywordBgColor: "CEE1F3")
                        }
                    }
                    .padding(.bottom, 5)
                    
                    // VStack-Group-HStack(9)
                    HStack {
                        Button(action:{}) {
                            Tag(keywordText: "Xcode", keywordBgColor: "CEE1F3")
                        }
                        Button(action:{}) {
                            Tag(keywordText: "Swift Student Challenge", keywordBgColor: "CEE1F3")
                        }
                    }
                    .padding(.bottom, 28)
                }
                
                // VStack-Button
                NavigationLink(destination: Check()) {
                    Text("다음")
                        .font(.custom("Apple SD Gothic Neo", size: 18))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hex: "292929"))
                        .fixedSize()
                        .frame(width: 338, height: 48)
                        .background(Color(hex: "F6D555"))
                        .cornerRadius(10)
                }
            }.padding()
        }.navigationBarBackButtonHidden(true)
    }
}
