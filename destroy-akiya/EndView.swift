//
//  EndView.swift
//  destroy-akiya
//
//  Created by 杉本優 on 2025/04/27.
//


import SwiftUI

struct EndView: View {
    @State private var isARActive = false

    var body: some View {
        NavigationStack {
            ZStack {
                // 背景画像
                Image("with_button_p4") // ← ここを新しい画像名に変更！
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()

                // 「次へ」ボタンのタップ領域
                Button(action: {
                    isARActive = true
                }) {
                    Color.clear // 透明なタップエリア
                }
                .frame(width: 250, height: 80) // ← タップできる領域サイズ
                .position(x: UIScreen.main.bounds.width / 2, y: UIScreen.main.bounds.height * 0.90)
                // ↑ 85%→90%に変更して、「次へ」ボタンに合わせる！
            }
            .navigationBarHidden(true)
            .navigationDestination(isPresented: $isARActive) {
                EndView1()
            }
        }
    }
}

#Preview {
    EndView() // ← ここも正しく EndView にする
}