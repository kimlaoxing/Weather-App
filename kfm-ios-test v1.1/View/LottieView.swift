//
//  LottieView.swift
//  kfm-ios-test v1.1
//
//  Created by Macbook Pro  on 20/10/21.
//

import SwiftUI
import Lottie

struct LottieView: UIViewRepresentable {
    var name: String
    var loopMode: LottieLoopMode = .loop
    func makeUIView(context: UIViewRepresentableContext<LottieView>) -> some UIView  {
        let view = UIView()
        return view
    }
    
    func updateUIView(_ uiView: UIViewType, context: UIViewRepresentableContext<LottieView>) {
        uiView.subviews.forEach({$0.removeFromSuperview()})
        
        let animationView = AnimationView()
        animationView.translatesAutoresizingMaskIntoConstraints = false
        uiView.addSubview(animationView)
        
        NSLayoutConstraint.activate([
            animationView.widthAnchor.constraint(equalTo: uiView.widthAnchor),
            animationView.heightAnchor.constraint(equalTo: uiView.heightAnchor),
        ])
        
        animationView.animation = Animation.named(name)
        animationView.contentMode = .scaleToFill
        animationView.loopMode = loopMode
        animationView.play()
    }
    
    
    
    
}

