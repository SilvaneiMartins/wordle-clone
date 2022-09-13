//
//  ToastView.swift
//  Wordle
//
//  Created by Silvanei  Martins on 13/09/22.
//

import SwiftUI

struct ToastView: View {
    let toastText: String
    
    var body: some View {
        Text(toastText)
            .foregroundColor(.systemBackground)
            .padding()
            .background(RoundedRectangle(cornerRadius: 10).fill(Color.primary))
    }
}

struct ToastView_Previews: PreviewProvider {
    static var previews: some View {
        ToastView(toastText: "Esta palavra não está na lista.")
    }
}
