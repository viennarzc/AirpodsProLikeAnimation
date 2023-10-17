//
//  ContentView.swift
//  AirpodsProLikeAnimation
//
//  Created by Viennarz Curtiz on 2/24/23.
//

import SwiftUI

struct ContentView: View {
    enum Mode {
        case noiseCancellation
        case transparency
        case off
    }
    
    @Namespace private var circleAnimate
    
    @State private var selectedMode: Mode = .off
    
    var body: some View {
            HStack {
                ZStack {
                    if selectedMode == .noiseCancellation {
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 60, height: 60)
                            .matchedGeometryEffect(id: "selection", in: circleAnimate)
                        
                    }
                    
                    Image(systemName:
                            "person.fill")
                        .foregroundColor(.white)
                        .padding()
                }
                .onTapGesture {
                    withAnimation {
                        selectedMode = .noiseCancellation
                        
                    }
                }
                
                Spacer()
                
                ZStack {
                    if selectedMode == .off {
                        Circle()
                            .fill(Color.gray)
                            .frame(width: 60, height: 60)
                            .matchedGeometryEffect(id: "selection", in: circleAnimate)
                        
                    }
                    
                    Image(systemName: "person.fill")
                        .foregroundColor(.white)
                        .padding()
                }
                .onTapGesture {
                    withAnimation {
                        selectedMode = .off
                        
                    }
                }
                
                
                Spacer()
                
                ZStack {
                    if selectedMode == .transparency {
                        Circle()
                            .fill(Color.blue)
                            .frame(width: 60, height: 60)
                            .matchedGeometryEffect(id: "selection", in: circleAnimate)
                        
                    }
                    
                    Image(systemName: "person.fill")
                        .foregroundColor(.white)
                        .padding()
                }
                .onTapGesture {
                    withAnimation {
                        selectedMode = .transparency
                    }
                }
                
            }
            .padding(4)
            .frame(width: 300)
            .background(Capsule())
            .font(.title2)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
