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
    @State private var showTabBarButton: Bool = false
    @Binding var isShowRecordButton: Bool
    
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    
    private let avPlayer: [AVPlayer] = [
        AVPlayer(url:  Bundle.main.url(forResource: "chat1", withExtension: "mp4")!),
        AVPlayer(url:  Bundle.main.url(forResource: "chat2", withExtension: "mp4")!),
        AVPlayer(url:  Bundle.main.url(forResource: "chat3", withExtension: "mp4")!)]
    
    func toggleButtons() {
        focusMessageField = false
    }

    var btnBack : some View {
        Button(action: {
            showTabBarButton = true
            self.presentationMode.wrappedValue.dismiss()
        }) {
            HStack {
                Image(systemName: "chevron.backward")
                    .aspectRatio(contentMode: .fit)
                    .foregroundColor(.black)
            }
        }
    }
    
    var body: some View {
        if #available(iOS 16.0, *) {
            NavigationView {
                VStack {
                    // Leeo's chat 1
                    HStack {
                        HStack {
                            Image("Leeo")
                                .frame(width: 48, height: 48)
                                .cornerRadius(24)
                            
                            VStack(alignment: .leading, spacing: 2) {
                                Text("리이오")
                                    .font(.sandoll(size: 10, weight: .medium))
                                    .foregroundColor(Color(hex: "292929"))
                                    .padding(.leading, 5)
                                Text("안녕하십니까. 저에게 멘토링을 요청하셨더라고요. 지금 어디신가요? 그리고 지금 당장 멘토링 해도 괜찮을까요?")
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
                    .padding(.vertical, 24)
                    
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
                                    Text("안녕하세요, Leeo. 저희의 사연에 응답해 주셔서 감사합니다. 저희는 지금 콜랩1에 있습니다. 지금 당장 가능합니다.")
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
                        .animation(.easeIn)
                    }
                    
                    // Leeo's chat 2
                    if showNextMessage >= 2 {
                        HStack {
                            HStack {
                                Image("Leeo")
                                    .frame(width: 48, height: 48)
                                    .cornerRadius(24)
                                
                                VStack(alignment: .leading, spacing: 2) {
                                    Text("리이오")
                                        .font(.sandoll(size: 10, weight: .medium))
                                        .foregroundColor(Color(hex: "292929"))
                                        .padding(.leading, 5)
                                    Text("좋아요. 지금 바로 갈게요.")
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
                        .animation(.easeIn)
                        
                    }
                    
                    if showNextMessage >= 3 {
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
                                
                                Spacer()
                                
                                NavigationLink {
                                    MentoringWithLeeo()
                                } label: {
                                    Image(systemName: "play.circle.fill")
                                        .symbolRenderingMode(.palette)
                                        .foregroundStyle(.white, Color(hex: "F6D555"))
                                        .font(.sandoll(size: 25, weight: .medium))
                                        .padding(.trailing, 10
                                        )
                                }
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
                    
                    if showNextMessage == 0 {
                        VideoPlayer(player: avPlayer[0])
                            .onDisappear {
                                avPlayer[0].isMuted = true
                            }
                            .frame(width: 250, height: 250)
                    } else if showNextMessage == 1 {
                        VideoPlayer(player: avPlayer[1])
                            .onDisappear {
                                avPlayer[1].isMuted = true
                            }
                            .frame(width: 250, height: 250)
                    } else {
                        VideoPlayer(player: avPlayer[2])
                            .onDisappear {
                                avPlayer[1].isMuted = true
                            }
                            .frame(width: 250, height: 250)
                    }
                    
                    
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
                                            if showNextMessage == 1 {
                                                avPlayer[0].pause()
                                                avPlayer[1].seek(to: .zero)
                                                avPlayer[1].play()
                                                avPlayer[2].pause()
                                            } else if showNextMessage >= 2 {
                                                avPlayer[0].pause()
                                                avPlayer[1].pause()
                                                avPlayer[2].seek(to: .zero)
                                                avPlayer[2].play()
                                            } else if showNextMessage >= 3 {
                                                self.isShowRecordButton = true
                                                avPlayer[0].pause()
                                                avPlayer[1].pause()
                                                avPlayer[2].pause()
                                            }
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
            .ignoresSafeArea()
            .onAppear {
                showTabBarButton = false
                showNextMessage = 0
                avPlayer[0].seek(to: .zero)
                avPlayer[0].play()
                avPlayer[1].pause()
                avPlayer[2].pause()
            }
            .onDisappear {
                for player in avPlayer {
                    player.pause()
                    player.seek(to: .zero)
                }
            }
            .navigationBarBackButtonHidden(true)
            .navigationBarItems(leading: btnBack)
            .navigationBarTitle("리이오", displayMode: .inline)
            .navigationBarItems(trailing: Image(systemName: "pencil.circle").foregroundColor( showNextMessage >= 3 ? .black : .clear))
            .toolbar(showTabBarButton ? .visible : .hidden, for: .tabBar)
        } else {
            // Fallback on earlier versions
        }
    }
}
