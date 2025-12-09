//
//  NameView.swift
//  MAMMAFY2
//
//  
//

import SwiftUI

struct NameView: View {
    

    let sagaGreen = Color(red: 77/255, green: 122/255, blue: 86/255)
    let textBlack = Color(red: 64/255, green: 64/255, blue: 77/255)
    let creamWhite = Color(red: 250/255, green: 250/255, blue: 249/255)
    let grayDark = Color(red: 102/255, green: 102/255, blue: 108/255)
    let mintCream = Color(red: 233/255, green: 248/255, blue: 236/255)
    
    // Users Name
    @State private var isim: String = ""

    var body: some View {
        NavigationStack {
            
        ZStack {
            
            creamWhite.ignoresSafeArea()
            
            VStack(spacing: 30) {
                
                Spacer()
                
                // ICON
                Image(systemName: "heart.text.square.fill")
                    .font(.system(size: 60))
                    .foregroundColor(sagaGreen)
                    .padding()
                    .background(sagaGreen.opacity(0.3))
                    .cornerRadius(15)
                
                //TEXT
                VStack(spacing: 15) {
                    Text("Welcome to Mammafy")
                        .font(.title)
                        .bold()
                        .foregroundColor(textBlack)
                    
                    Text("Your personal companion for a healthy, Happy pregnancy.")
                        .font(.callout)
                        .multilineTextAlignment(.center)
                        .foregroundColor(grayDark)
                }
                
                Spacer().frame(height: 20)
                
                // Name Label
                VStack(alignment: .leading, spacing: 10) {
                    Text("What should we call you ?")
                        .font(.headline)
                        .bold()
                        .foregroundColor(textBlack)
                    
                    TextField("YOUR NAME", text: $isim)
                        .padding()
                        .background(Color.white)
                        .overlay(
                            RoundedRectangle(cornerRadius: 25)
                                .stroke(Color.gray.opacity(0.4), lineWidth: 1)
                        )
                        .cornerRadius(25)
                }
                .padding(.horizontal, 30)
                
                Spacer()
                
                // BUTTON
                NavigationLink(destination: CalendarView()){
                    Text("Next")
                        .font(.title3)
                        .bold()
                        .foregroundColor(textBlack)
                        .frame(maxWidth: .infinity)
                        .padding()
                        .background(mintCream) 
                        .cornerRadius(30)
                        .shadow(color: .black.opacity(0.05), radius: 5, x: 0, y: 5)
                }
                .padding(.horizontal, 30)
                .padding(.bottom, 20)
                
            }
        }
    }
}
}
#Preview {
    NavigationStack {
        NameView()
    }
}
