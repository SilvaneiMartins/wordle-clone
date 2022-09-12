//
//  LetterButtonBiew.swift
//  Wordle
//
//  Created by Silvanei  Martins on 12/09/22.
//

import SwiftUI

struct LetterButtonBiew: View {
    @EnvironmentObject var dm: WordleDataModel
    var letter: String
    
    var body: some View {
        Button {
            dm.addToCurrentWord(letter)
        } label: {
            Text(letter)
                .font(.system(size: 20))
                .frame(width: 35, height: 50)
                .background(dm.keyColors[letter])
                .foregroundColor(.primary)
        }
        .buttonStyle(.plain)
    }
}

struct LetterButtonBiew_Previews: PreviewProvider {
    static var previews: some View {
        LetterButtonBiew(letter: "L")
            .environmentObject(WordleDataModel())
    }
}
