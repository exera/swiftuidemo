//
//  TextView.swift
//  swiftuitest
//
//  Created by Ahmet Sancar on 19.11.2021.
//

import UIKit
import SwiftUI

struct TextView: UIViewRepresentable {
    @Binding var text: String
    var delegate: TextViewDelegate?

    func makeUIView(context: Context) -> UITextView {
        let view = UITextView()
        view.backgroundColor = .clear
        //delegate = TextViewDelegate(text: _text)
        view.delegate = delegate
        return view
    }

    func updateUIView(_ uiView: UITextView, context: Context) {
        uiView.text = text
    }
}

class TextViewDelegate: NSObject, UITextViewDelegate {
    var text: Binding<String>
    init(text: Binding<String>){
        self.text = text
    }
    
    func textViewDidChange(_ textView: UITextView) {
        text.wrappedValue = textView.text
    }
}

