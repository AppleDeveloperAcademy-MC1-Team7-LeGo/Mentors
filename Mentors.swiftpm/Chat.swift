//
//  Chat.swift
//  Mentors
//
//  Created by 제나 on 2023/03/27.
//

import SwiftUI
import AVKit
import SpriteKit

struct Chat: View {
    
    @FocusState private var focusMessageField
    @State private var isMoreFunctionsShowing: Bool = false
    @State private var message = ""
    private let functions: [String: String] = ["photo": "앨범",
                                       "camera": "카메라",
                                       "folder": "파일",
                                       "calendar": "캘린더"]
    @State private var showNextMessage: Int = 0
    
    @State var mainScene = SKScene()
    
    private let avPlayer = AVPlayer(url:  Bundle.main.url(forResource: "Mentoring", withExtension: "mp4")!)
    
    func toggleButtons() {
        focusMessageField = false
    }
    
    var body: some View {
        NavigationView {
            VStack {
                // Leeo's chat 1
                HStack {
                    HStack {
                        Circle()
                            .frame(width: 48, height: 48)
                            .foregroundColor(Color(hex: "D9D9D9"))
                        
                        VStack(alignment: .leading, spacing: 2) {
                            Text("리이오")
                                .font(.sandoll(size: 10, weight: .medium))
                                .foregroundColor(Color(hex: "292929"))
                                .padding(.leading, 5)
                            Text("안녕하세요. Team LeGo에게 도움을 줄 수 있을 것 같아서 채팅을 보내요. 혹시 지금 카페테리아에서 멘토링 괜찮아요?")
                                .font(.sandoll(size: 14, weight: .medium))
                                .padding(.vertical, 5)
                                .padding(.horizontal, 10)
                                .background(Color(hex: "F9F9F9"))
                                .overlay {
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(Color(hex: "F6D555"), lineWidth: 1)
                                }
                                .foregroundColor(Color(hex: "292929"))
                        }
                        .padding(.leading, 5)
                    }
                    Spacer()
                }
                .padding(.leading, 16)
                .padding(.bottom, 24)
                
                // LeGo's chat
                if showNextMessage >= 1 {
                    HStack {
                        Spacer()
                        
                        HStack {
                            VStack(alignment: .trailing, spacing: 2) {
                                Text("LeGo")
                                    .font(.sandoll(size: 10, weight: .medium))
                                    .foregroundColor(Color(hex: "292929"))
                                    .padding(.trailing, 5)
                                Text("안녕하세요, Leeo. 저희의 사연에 응답해 주셔서 감사합니다. 네, 지금 카페테리아에서 멘토링 괜찮습니다. 지금 저희 모두 카페테리아에 있어요.")
                                    .font(.sandoll(size: 14, weight: .medium))
                                    .padding(.vertical, 5)
                                    .padding(.horizontal, 11)
                                    .background(Color(hex: "FDF4D1"))
                                    .cornerRadius(8)
                                    .foregroundColor(Color(hex: "292929"))
                            }
                        }
                    }
                    .padding(.trailing, 16)
                    .padding(.bottom, 24)
                }
                
                // Leeo's chat 2
                if showNextMessage >= 2 {
                    HStack {
                        HStack {
                            Circle()
                                .frame(width: 48, height: 48)
                                .foregroundColor(Color(hex: "D9D9D9"))
                            
                            VStack(alignment: .leading, spacing: 2) {
                                Text("리이오")
                                    .font(.sandoll(size: 10, weight: .medium))
                                    .foregroundColor(Color(hex: "292929"))
                                    .padding(.leading, 5)
                                Text("좋습니다. 바로 가겠습니다.")
                                    .font(.sandoll(size: 14, weight: .medium))
                                    .padding(.vertical, 5)
                                    .padding(.horizontal, 10)
                                    .background(Color(hex: "F9F9F9"))
                                    .overlay {
                                        RoundedRectangle(cornerRadius: 10)
                                            .stroke(Color(hex: "F6D555"), lineWidth: 1)
                                    }
                                    .foregroundColor(Color(hex: "292929"))
                            }
                            .padding(.leading, 5)
                        }
                        Spacer()
                    }
                    .padding(.leading, 16)
                    .padding(.bottom, 24)
                    
                    // schedule
                    VStack(alignment: .leading) {
                        HStack {
                            Image(systemName: "calendar.circle.fill")
                                .symbolRenderingMode(.palette)
                                .foregroundStyle(.white, Color(hex: "F6D555"))
                                .font(.sandoll(size: 20, weight: .medium))
                            
                            Text("3월 31일 (금) 오후 4:00")
                                .font(.sandoll(size: 14, weight: .bold))
                                .foregroundColor(Color(hex: "292929"))
                            Spacer()
                        }
                        .padding(.bottom, 4)
                        .padding(.leading, 26)
                        
                        HStack {
                            Text("멘토 리이오")
                                .font(.sandoll(size: 14, weight: .semibold))
                                .foregroundColor(Color(hex: "292929"))
                            
                            Text("(와)과 멘토링 약속을 잡았어요.")
                                .font(.sandoll(size: 14, weight: .medium))
                                .foregroundColor(Color(hex: "292929"))
                        }
                        .padding(.leading, 28)
                    }
                    .padding(.vertical, 28)
                    .background(Color(hex: "F9F9F9"))
                    .overlay {
                        RoundedRectangle(cornerRadius: 10)
                            .stroke(Color(hex: "F6D555"), lineWidth: 3)
                    }
                    .padding(.horizontal, 16)
                }
                
                Spacer()
                
                VideoPlayer(player: avPlayer)
                    .onDisappear {
                        avPlayer.isMuted = false
                    }
                    .frame(width: 250, height: 250)
                
                Spacer()
                
                // more functions
                VStack {
                    HStack {
                        Button {
                            if isMoreFunctionsShowing {
                                isMoreFunctionsShowing = false
                            } else {
                                isMoreFunctionsShowing = true
                                focusMessageField = false
                            }
                        } label: {
                            Image(systemName: isMoreFunctionsShowing && !focusMessageField ? "minus" : "plus")
                                .font(.sandoll(size: 24, weight: .regular))
                                .foregroundColor(Color(hex: "F6D555"))
                        }
                        
                        ZStack {
                            TextField("", text: $message) {
                                UIApplication.shared.endEditing()
                            }
                                .frame(height: 40)
                                .padding(.horizontal, 10)
                                .background(Color(hex: "F5F3E9"))
                                .opacity(0.9)
                                .cornerRadius(20)
                                .foregroundColor(Color(hex: "292929"))
                                .focused($focusMessageField)
                            
                            if !message.isEmpty {
                                HStack {
                                    Spacer(minLength: 0)
                                    
                                    Button {
                                        showNextMessage += 1
                                    } label: {
                                        Image(systemName: "paperplane")
                                            .foregroundColor(Color(hex: "F9F9F9"))
                                            .background {
                                                Circle()
                                                    .frame(width: 34, height: 34)
                                            }
                                    }
                                }
                                .padding(.trailing, 11)
                            }
                        }
                    }
                    .padding(.horizontal, 10)
                    .padding(.vertical, 5)
                    
                    if isMoreFunctionsShowing && !focusMessageField {
                        HStack {
                            ForEach(functions.sorted(by: >), id: \.key) { key, value in
                                FunctionCustomView(imageName: key, functionName: value)
                                    .frame(maxWidth: .infinity)
                            }
                        }
                        .padding(.horizontal, 40)
                        .padding(.top, 20)
                    }
                }
                .background(Color(hex: "F9F9F9"))
                .transition(.slide)
                .animation(.easeIn)
            }
            .background(Color(hex: "F7F5EF"))
        }
        .navigationTitle("리이오")
        .ignoresSafeArea()
        .onAppear {
            avPlayer.play()
        }
    }
}

struct Chat_Previews: PreviewProvider {
    static var previews: some View {
        Chat()
    }
}
