//
//  ContentView.swift
//  MinionsView
//
//  Created by 指原奈々 on 2023/05/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            FaceView()
            PantsView()
            FootView()
        }
        .padding()
    }
}

struct FaceView:View {
    var body: some View {
        ZStack{
            RectangleView(color: .yellow, width: 300, height: 300)
            VStack{
                HStack{
                    RectangleView(color: .black, width: 60, height: 20)
                    ZStack{
                        RectangleView(color: .gray, width: 90, height: 90)
                        RectangleView(color: .white, width: 70, height: 70)
                        RectangleView(color: .black, width: 20, height: 20)
                    }
                    ZStack{
                        RectangleView(color: .gray, width: 90, height: 90)
                        RectangleView(color: .white, width: 70, height: 70)
                        RectangleView(color: .black, width: 20, height: 20)
                    }
                    RectangleView(color: .black, width: 60, height: 20)
                }
                ZStack{
                    RectangleView(color: .black, width: 70, height: 40)
                    VStack {
                        RectangleView(color: .white, width: 60, height: 10)
                        RectangleView(color: .red, width: 60, height: 10)
                    }
                }
            }
        }
    }
}

struct PantsView:View {
    var body: some View {
        RectangleView(color: .blue, width: 300, height: 100)
    }
}


struct FootView:View {
    var body: some View {
        HStack{
            RectangleView(color: .black, width: 70, height: 30)
            RectangleView(color: .black, width: 70, height: 30)
        }
    }
}

struct RectangleView: View {
    let color: Color
    let width: CGFloat
    let height: CGFloat
    var body: some View {
        Rectangle()
            .foregroundColor(color)
            .frame(width: width, height: height)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
        
    }
}
