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
                    HStack {
                        Button(action:{}) {
                            Image(systemName: "pencil.tip")
                                .resizable()
                                .frame(width: 20, height: 27)
                                .foregroundColor(Color(hex: "292929"))
                                .padding(10)
                        }
                        .background(Color(hex: "E5E2D7"))
                        .cornerRadius(10)
                        Button(action:{}) {
                            Text("# 팀원이랑 싸웠어요")
                                .font(.custom("Apple SD Gothic Neo", size: 18))
                                .fontWeight(.semibold)
                                .fixedSize()
                                .foregroundColor(Color(hex: "292929"))
                                .padding(15)
                        }
                        .background(Color(hex: "FDF4D1"))
                        .cornerRadius(10)
                        Button(action:{}) {
                            Text("# 협업")
                                .font(.custom("Apple SD Gothic Neo", size: 18))
                                .fontWeight(.semibold)
                                .fixedSize()
                                .foregroundColor(Color(hex: "292929"))
                                .padding(15)
                        }
                        .background(Color(hex: "FDF4D1"))
                        .cornerRadius(10)
                    }
                    .padding(.bottom, 5)
                    
                    // VStack-Group-HStack(2)
                    HStack {
                        Button(action:{}) {
                            Text("# 소통")
                                .font(.custom("Apple SD Gothic Neo", size: 18))
                                .fontWeight(.semibold)
                                .fixedSize()
                                .foregroundColor(Color(hex: "292929"))
                                .padding(15)
                        }
                        .background(Color(hex: "FDF4D1"))
                        .cornerRadius(10)
                        Button(action:{}) {
                            Text("# 회고")
                                .font(.custom("Apple SD Gothic Neo", size: 18))
                                .fontWeight(.semibold)
                                .fixedSize()
                                .foregroundColor(Color(hex: "292929"))
                                .padding(15)
                        }
                        .background(Color(hex: "FDF4D1"))
                        .cornerRadius(10)
                        Button(action:{}) {
                            Text("# 기록")
                                .font(.custom("Apple SD Gothic Neo", size: 18))
                                .fontWeight(.semibold)
                                .fixedSize()
                                .foregroundColor(Color(hex: "292929"))
                                .padding(15)
                        }
                        .background(Color(hex: "FDF4D1"))
                        .cornerRadius(10)
                        Button(action:{}) {
                            Text("# CBL")
                                .font(.custom("Apple SD Gothic Neo", size: 18))
                                .fontWeight(.semibold)
                                .fixedSize()
                                .foregroundColor(Color(hex: "292929"))
                                .padding(15)
                        }
                        .background(Color(hex: "FDF4D1"))
                        .cornerRadius(10)
                    }
                    .padding(.bottom, 5)
                    
                    // VStack-Group-HStack(3)
                    HStack {
                        Button(action:{}) {
                            Text("# Engage")
                                .font(.custom("Apple SD Gothic Neo", size: 18))
                                .fontWeight(.semibold)
                                .fixedSize()
                                .foregroundColor(Color(hex: "292929"))
                                .padding(15)
                        }
                        .background(Color(hex: "FDF4D1"))
                        .cornerRadius(10)
                        Button(action:{}) {
                            Text("# Investigate")
                                .font(.custom("Apple SD Gothic Neo", size: 18))
                                .fontWeight(.semibold)
                                .fixedSize()
                                .foregroundColor(Color(hex: "292929"))
                                .padding(15)
                        }
                        .background(Color(hex: "FDF4D1"))
                        .cornerRadius(10)
                        Button(action:{}) {
                            Text("# Act")
                                .font(.custom("Apple SD Gothic Neo", size: 18))
                                .fontWeight(.semibold)
                                .fixedSize()
                                .foregroundColor(Color(hex: "292929"))
                                .padding(15)
                        }
                        .background(Color(hex: "FDF4D1"))
                        .cornerRadius(10)
                    }
                    .padding(.bottom, 5)
                    
                    // VStack-Group-HStack(4)
                    HStack {
                        Button(action:{}) {
                            Text("# 프레젠테이션")
                                .font(.custom("Apple SD Gothic Neo", size: 18))
                                .fontWeight(.semibold)
                                .fixedSize()
                                .foregroundColor(Color(hex: "292929"))
                                .padding(15)
                        }
                        .background(Color(hex: "FDF4D1"))
                        .cornerRadius(10)
                        Button(action:{}) {
                            Text("# 스토리텔링")
                                .font(.custom("Apple SD Gothic Neo", size: 18))
                                .fontWeight(.semibold)
                                .fixedSize()
                                .foregroundColor(Color(hex: "292929"))
                                .padding(15)
                        }
                        .background(Color(hex: "FDF4D1"))
                        .cornerRadius(10)
                    }
                    .padding(.bottom, 5)
                    
                    // VStack-Group-HStack(5)
                    HStack {
                        Button(action:{}) {
                            Text("# Domain")
                                .font(.custom("Apple SD Gothic Neo", size: 18))
                                .fontWeight(.semibold)
                                .fixedSize()
                                .foregroundColor(Color(hex: "292929"))
                                .padding(15)
                        }
                        .background(Color(hex: "F9DEDF"))
                        .cornerRadius(10)
                        Button(action:{}) {
                            Text("# 마케팅")
                                .font(.custom("Apple SD Gothic Neo", size: 18))
                                .fontWeight(.semibold)
                                .fixedSize()
                                .foregroundColor(Color(hex: "292929"))
                                .padding(15)
                        }
                        .background(Color(hex: "F9DEDF"))
                        .cornerRadius(10)
                        Button(action:{}) {
                            Text("# 비즈니스")
                                .font(.custom("Apple SD Gothic Neo", size: 18))
                                .fontWeight(.semibold)
                                .fixedSize()
                                .foregroundColor(Color(hex: "292929"))
                                .padding(15)
                        }
                        .background(Color(hex: "F9DEDF"))
                        .cornerRadius(10)
                    }
                    .padding(.bottom, 5)
                    
                    // VStack-Group-HStack(6)
                    HStack {
                        Button(action:{}) {
                            Text("# Design")
                                .font(.custom("Apple SD Gothic Neo", size: 18))
                                .fontWeight(.semibold)
                                .fixedSize()
                                .foregroundColor(Color(hex: "292929"))
                                .padding(15)
                        }
                        .background(Color(hex: "DAEEC6"))
                        .cornerRadius(10)
                        Button(action:{}) {
                            Text("# UX")
                                .font(.custom("Apple SD Gothic Neo", size: 18))
                                .fontWeight(.semibold)
                                .fixedSize()
                                .foregroundColor(Color(hex: "292929"))
                                .padding(15)
                        }
                        .background(Color(hex: "DAEEC6"))
                        .cornerRadius(10)
                        Button(action:{}) {
                            Text("# UI")
                                .font(.custom("Apple SD Gothic Neo", size: 18))
                                .fontWeight(.semibold)
                                .fixedSize()
                                .foregroundColor(Color(hex: "292929"))
                                .padding(15)
                        }
                        .background(Color(hex: "DAEEC6"))
                        .cornerRadius(10)
                        Button(action:{}) {
                            Text("# HIG")
                                .font(.custom("Apple SD Gothic Neo", size: 18))
                                .fontWeight(.semibold)
                                .fixedSize()
                                .foregroundColor(Color(hex: "292929"))
                                .padding(15)
                        }
                        .background(Color(hex: "DAEEC6"))
                        .cornerRadius(10)
                    }
                    .padding(.bottom, 5)
                    
                    // VStack-Group-HStack(7)
                    HStack {
                        Button(action:{}) {
                            Text("# 와이어프레임")
                                .font(.custom("Apple SD Gothic Neo", size: 18))
                                .fontWeight(.semibold)
                                .fixedSize()
                                .foregroundColor(Color(hex: "292929"))
                                .padding(15)
                        }
                        .background(Color(hex: "DAEEC6"))
                        .cornerRadius(10)
                        Button(action:{}) {
                            Text("# 프로토타이핑")
                                .font(.custom("Apple SD Gothic Neo", size: 18))
                                .fontWeight(.semibold)
                                .fixedSize()
                                .foregroundColor(Color(hex: "292929"))
                                .padding(15)
                        }
                        .background(Color(hex: "DAEEC6"))
                        .cornerRadius(10)
                    }
                    .padding(.bottom, 5)
                    
                    // VStack-Group-HStack(8)
                    HStack {
                        Button(action:{}) {
                            Text("# Tech")
                                .font(.custom("Apple SD Gothic Neo", size: 18))
                                .fontWeight(.semibold)
                                .fixedSize()
                                .foregroundColor(Color(hex: "292929"))
                                .padding(15)
                        }
                        .background(Color(hex: "CEE1F3"))
                        .cornerRadius(10)
                        Button(action:{}) {
                            Text("# Swift")
                                .font(.custom("Apple SD Gothic Neo", size: 18))
                                .fontWeight(.semibold)
                                .fixedSize()
                                .foregroundColor(Color(hex: "292929"))
                                .padding(15)
                        }
                        .background(Color(hex: "CEE1F3"))
                        .cornerRadius(10)
                        Button(action:{}) {
                            Text("# SwiftUI")
                                .font(.custom("Apple SD Gothic Neo", size: 18))
                                .fontWeight(.semibold)
                                .fixedSize()
                                .foregroundColor(Color(hex: "292929"))
                                .padding(15)
                        }
                        .background(Color(hex: "CEE1F3"))
                        .cornerRadius(10)
                    }
                    .padding(.bottom, 5)
                    
                    // VStack-Group-HStack(9)
                    HStack {
                        Button(action:{}) {
                            Text("# Xcode")
                                .font(.custom("Apple SD Gothic Neo", size: 18))
                                .fontWeight(.semibold)
                                .fixedSize()
                                .foregroundColor(Color(hex: "292929"))
                                .padding(15)
                        }
                        .background(Color(hex: "CEE1F3"))
                        .cornerRadius(10)
                        Button(action:{}) {
                            Text("# Swift Student Challenge")
                                .font(.custom("Apple SD Gothic Neo", size: 18))
                                .fontWeight(.semibold)
                                .fixedSize()
                                .foregroundColor(Color(hex: "292929"))
                                .padding(15)
                        }
                        .background(Color(hex: "CEE1F3"))
                        .cornerRadius(10)
                    }
                    .padding(.bottom, 30)
                }
                
                // VStack-Button
                Button(action:{}) {
                    Text("다음")
                        .font(.custom("Apple SD Gothic Neo", size: 18))
                        .fontWeight(.semibold)
                        .foregroundColor(Color(hex: "292929"))
                }
                .fixedSize()
                .frame(width: 338, height: 48)
                .background(Color(hex: "F6D555"))
                .cornerRadius(10)
                
            }.padding()
        }
    }
}

struct SendingFiveView_Previews: PreviewProvider {
    static var previews: some View {
        SendingFiveView()
    }
}
