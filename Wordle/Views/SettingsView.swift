//
//  SettingsView.swift
//  Wordle
//
//  Created by Silvanei  Martins on 13/09/22.
//

import SwiftUI

struct SettingsView: View {
    @EnvironmentObject var csManager: ColorSchemaManager
    @EnvironmentObject var dm: WordleDataModel
    @Environment(\.dismiss) var dismiss
    
    var body: some View {
        NavigationView {
            VStack {
                Toggle("Modo Difícil", isOn: $dm.hardMode)
                Text("Mudar de Tema")
                Picker("Modo de Exibição", selection: $csManager.colorScheme) {
                    Text("Claro").tag(ColorScheme.light)
                    Text("Escuro").tag(ColorScheme.dark)
                    Text("Sistema").tag(ColorScheme.unspecified)
                }
                .pickerStyle(.segmented)
                Spacer()
            }
            .padding()
            .navigationTitle("Opções")
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

struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
            .environmentObject(ColorSchemaManager())
            .environmentObject(WordleDataModel())
    }
}
