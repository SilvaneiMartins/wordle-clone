//
//  HelpView.swift
//  Wordle
//
//  Created by Silvanei  Martins on 13/09/22.
//

import SwiftUI

struct HelpView: View {
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            VStack(alignment: .leading) {
                Text(
                """
                Adivinhe o **WORDLE** em 6. tentativas.
                
                Cada palpite deve ser uma palavra válida de 5 letras. Aperte o botão enter para enviar.
                
                Após cada palpite, a cor das peças mudará para mostrar o quão próximo seu palpite estava da palavra.
                """
                )
                Divider()
                Text("**Exemplos**")
                VStack(alignment: .leading) {
                    Image("Weary")
                        .resizable()
                        .scaledToFit()
                    Text("A letra **W** está na palavra e no local correto.")
                    Image("Pills")
                        .resizable()
                        .scaledToFit()
                    Text("A letra **I** está na palavra, mas no lugar errado.")
                    Image("Vague")
                        .resizable()
                        .scaledToFit()
                    Text("A letra **I** não está na palavra correta e em nenhum lugar.")
                }
                Divider()
                Text("**Toque no botão NOVO para iniciar um novo GAME.**")
                
                Spacer()
            }
            .frame(width: min(Global.screenWidth - 50, 350))
            .navigationTitle("COMO JOGAR")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarTrailing) {
                    Button {
                        dismiss()
                    } label: {
                        Text("**X**")
                    }
                }
            }
        }
    }
}

struct HelpView_Previews: PreviewProvider {
    static var previews: some View {
        HelpView()
    }
}
