//
//  StatsView.swift
//  Wordle
//
//  Created by Silvanei  Martins on 13/09/22.
//

import SwiftUI

struct StatsView: View {
    @EnvironmentObject var dm: WordleDataModel
    
    var body: some View {
        VStack(spacing: 10) {
            HStack {
                Spacer()
                
                Button {
                    withAnimation {
                        dm.showStats.toggle()
                    }
                } label: {
                    Text("X")
                }
                .offset(x: 25, y: 10)
            }
            Text("Estatísticas")
                .font(.headline)
                .fontWeight(.bold)
            HStack(alignment: .top) {
                SingledStat(value: dm.currentStat.games, text: "Jogador")
                if dm.currentStat.games != 0 {
                    SingledStat(value: Int(100 * dm.currentStat.wins / dm.currentStat.games), text: "% Vitória")
                }
                SingledStat(value: dm.currentStat.streak, text: "Sequêncoa Atual")
                    .fixedSize(horizontal: false, vertical: true)
                SingledStat(value: dm.currentStat.maxStreak, text: "Sequêncoa Máxima")
                    .fixedSize(horizontal: false, vertical: true)
            }
            Text("GRÁFICO DE DISTRIBUIÇÃO")
                .font(.headline)
                .fontWeight(.bold)
            VStack(spacing: 5) {
                ForEach (0..<6) { index in
                    HStack {
                        Text("\(index + 1)")
                        if dm.currentStat.frequencies[index]  == 0 {
                            Rectangle()
                                .fill(Color.wrong)
                                .frame(width: 22, height: 20)
                                .overlay(
                                    Text("0")
                                        .foregroundColor(.white)
                                )
                        } else {
                            if let maxValue = dm.currentStat.frequencies.max() {
                                Rectangle()
                                    .fill((dm.tryIndex == index && dm.gameOver)
                                ? Color.correct : Color.wrong)
                                    .frame(width: CGFloat(dm.currentStat.frequencies[index]) / CGFloat(maxValue) * 210, height: 20)
                                    .overlay(
                                        Text("\(dm.currentStat.frequencies[index])")
                                            .foregroundColor(.white)
                                            .padding(.horizontal, 5), alignment: .trailing
                                    )
                            }
                        }
                        Spacer()
                    }
                }
            }
            Spacer()
        }
        .padding(.horizontal, 40)
        .frame(width: 350, height: 370)
        .background(RoundedRectangle(cornerRadius: 10).fill(Color.systemBackground))
        .padding()
        .shadow(color: .black.opacity(0.3), radius: 10)
        .offset(y: -70)
    }
}

struct StatsView_Previews: PreviewProvider {
    static var previews: some View {
        StatsView()
            .environmentObject(WordleDataModel())
    }
}

struct SingledStat: View {
    let value: Int
    let text: String
    
    var body: some View {
        VStack {
            Text("\(value)")
                .font(.largeTitle)
            Text(text)
                .font(.caption)
                .frame(width: 60)
                .multilineTextAlignment(.center)
        }
    }
}
