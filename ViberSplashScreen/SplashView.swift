//
//  ContentView.swift
//  VibesSplashScreen
//
//  Created by kenagt on 15. 7. 2022..
//
import Foundation
import SwiftUI
import UserNotifications

struct SplashView: View {
    //MARK: vars
    @State private var move = true
    
    //MARK: body
    var body: some View {
        NavigationView {
            ZStack {
                Color.colorBackground.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
                VStack() {
                    VStack {
                        Image("rakuten.splash.logo")
                            .resizable()
                            .frame(width: 120, height: 30, alignment: .center)
                            .padding(.top, 25)
                        ZStack {
                            Image("viber.splash.logo.base")
                                .resizable()
                                .frame(width: 105, height: 115, alignment: .center)
                                .padding(.top, 59)
                            
                            Image("viber.splash.logo.circle")
                                .resizable()
                                .frame(width: 120, height: 115, alignment: .center)
                                .padding(.top, 59)
                                .scaleEffect(move ? 0 : 1)
                                .offset(x: move ? -50 : 0, y: move ? 50 : 0)
                                .animation(.easeIn(duration: 0.5).repeatCount(1, autoreverses: false), value: move)
                            
                            Image("viber.splash.logo.phone")
                                .resizable()
                                .frame(width: 105, height: 115, alignment: .center)
                                .padding(.top, 50)
                                .scaleEffect(move ? 0 : 1)
                                .offset(x: move ? -50 : 0, y: move ? 50 : 0)
                                .animation(.easeIn(duration: 0.4).repeatCount(1, autoreverses: false).delay(0.5), value: move)
                            
                            Image("viber.splash.logo.line1")
                                .resizable()
                                .frame(width: 105, height: 115, alignment: .center)
                                .padding(.top, 35)
                                .padding(.leading, 12)
                                .scaleEffect(move ? 0 : 1)
                                .offset(x: move ? -50 : 0, y: move ? 50 : 0)
                                .animation(.easeIn(duration: 0.4).repeatCount(1, autoreverses: false).delay(0.7), value: move)
                            
                            Image("viber.splash.logo.line2")
                                .resizable()
                                .frame(width: 105, height: 115, alignment: .center)
                                .padding(.top, 28)
                                .padding(.leading, 22)
                                .scaleEffect(move ? 0 : 1)
                                .offset(x: move ? -50 : 0, y: move ? 50 : 0)
                                .animation(.easeIn(duration: 0.5).repeatCount(1, autoreverses: false).delay(0.8), value: move)
                            
                            Image("viber.splash.logo.line3")
                                .resizable()
                                .frame(width: 105, height: 115, alignment: .center)
                                .padding(.top, 22)
                                .padding(.leading, 28)
                                .scaleEffect(move ? 0 : 1)
                                .offset(x: move ? -50 : 0, y: move ? 50 : 0)
                                .animation(.easeIn(duration: 0.6).repeatCount(1, autoreverses: false).delay(0.9), value: move)
                        }
                        
                        Text(LocalizedStringKey("welcome.viber"))
                            .font(Font.system(size: 25))
                            .fontWeight(.bold)
                            .foregroundColor(Color.white)
                            .padding(.top, 40)
                        
                        Text(LocalizedStringKey("welcome.viber.description"))
                            .font(Font.system(size: 16))
                            .fontWeight(.medium)
                            .foregroundColor(Color.white)
                            .lineLimit(2)
                            .multilineTextAlignment(.center)
                            .padding(1)
                    }
                    Spacer()
                    VStack {
                        HStack(spacing: 2){
                            Text(LocalizedStringKey("read.policy"))
                                .font(Font.system(size: 12))
                                .foregroundColor(Color.white)
                            Link(destination: URL(string: "https://www.apple.com")!, label: {
                                Text(LocalizedStringKey("privacy.policy"))
                                    .font(Font.system(size: 12))
                                    .foregroundColor(Color.white)                                    .underline()
                            })
                        }
                        HStack(spacing: 2){
                            Text(LocalizedStringKey("tapping.policies"))
                                .font(Font.system(size: 12))
                                .foregroundColor(Color.white)
                            Link(destination: URL(string: "https://www.apple.com")!, label: {
                                Text(LocalizedStringKey("terms.policies"))
                                    .font(Font.system(size: 12))
                                    .foregroundColor(Color.white)
                                    .underline()
                            })
                        }
                    }
                    
                    Button(action: {
                        
                    }) {
                        Text(LocalizedStringKey("start.now"))
                            .foregroundColor(Color.textColor)
                            .font(Font.system(size: 17))
                            .fontWeight(.medium)
                            .frame(maxWidth: .infinity)
                    }
                    .padding(11)
                    .foregroundColor(Color.white)
                    .background(Color.white)
                    .cornerRadius(50)
                    .padding(.top, 10)
                    .padding(.leading, 35)
                    .padding(.trailing, 35)
                    .padding(.bottom, 33)
                }
            }
            .onAppear {
                move.toggle()
            }
            .navigationBarHidden(true)
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct SplashView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            SplashView().environment(\.colorScheme, .light).previewDevice(PreviewDevice(rawValue: "iPhone SE (2nd generation)"))
            SplashView().environment(\.colorScheme, .light).previewDevice(PreviewDevice(rawValue: "iPhone 8"))
            SplashView().environment(\.colorScheme, .light).previewDevice(PreviewDevice(rawValue: "iPhone 11"))
            SplashView().environment(\.colorScheme, .light).previewDevice(PreviewDevice(rawValue: "iPhone 12"))
            SplashView().environment(\.colorScheme, .light).previewDevice(PreviewDevice(rawValue: "iPhone 13"))
        }
    }
}

