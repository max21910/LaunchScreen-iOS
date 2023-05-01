
//  © 2022 Max21910
//  Prelaunch.swift
//  LaunchScreen
//  Created by Maxime DJ on 30/07/2021.
//

import SwiftUI

struct Prelaunch: View {
    
    @State private var animationisfinish = false
    @State private var angle: Double = 360
    @State private var opacity : Double = 1
    @State private var scale : CGFloat = 1
    
    var body: some View {
        Group {
            if animationisfinish == true {
                
                ContentView() //view after the animation is completed
                
            } else { //else we start the animation
                
                
                ZStack {
                    //set a background color here if you whant
                 /*  Image("Blue")
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .ignoresSafeArea()
                  */
                    
                    Image("bigIcon")//you can add your own icone in the asset folder
                        .resizable()
                        .frame(width: 200, height: 200)
                        .rotation3DEffect(
                            .degrees(angle),
                            axis: (x: 0.0, y: 1.0, z: 0.0)
                        )
                        .opacity(opacity)
                        .scaleEffect(scale)
                }
            }
        }
        
        .onAppear { // OnAppear start the animation when the view is seen by the user
            withAnimation(Animation.linear(duration: 2)) {
                angle = 0
                scale = 3
                opacity = 0
            }
            withAnimation(.linear.delay(1.75)) {
                animationisfinish = true
            }
        }
    }
}


struct PrelaunchView_Previews: PreviewProvider {
    static var previews: some View {
        Prelaunch()
    }
}



