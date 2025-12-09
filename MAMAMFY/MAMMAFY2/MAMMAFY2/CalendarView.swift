//
//  CalendarView.swift
//  MAMMAFY2
//
//  Created by sule nur celik on 09/12/25.
//
import SwiftUI

struct CalendarView: View {
    
    
    let sagaGreen = Color(red: 77/255, green: 122/255, blue: 86/255)
    let textBlack = Color(red: 64/255, green: 64/255, blue: 77/255)
    let creamWhite = Color(red: 250/255, green: 250/255, blue: 249/255)
    let grayDark = Color(red: 102/255, green: 102/255, blue: 108/255)
    let mintCream = Color(red: 233/255, green: 248/255, blue: 236/255)
    
    var body: some View {
        ZStack {
            
            creamWhite.ignoresSafeArea()
            
            VStack(spacing: 25) {
                
                Spacer()
                
                Image(systemName: "calendar.badge.clock")
                    .font(.system(size: 60))
                    .foregroundColor(sagaGreen)
                    .padding()
                    .background(sagaGreen.opacity(0.3))
                    .cornerRadius(15)
                
                // TEXT
                VStack(spacing: 10) {
                    Text("When did your journey begin?")
                        .font(.title2)
                        .bold()
                        .foregroundColor(textBlack)
                    
                    Text("Select the first day of your last period")
                        .font(.body)
                        .foregroundColor(grayDark)
                }
                
                // CALENDER VIEW MANUEL
                VStack(spacing: 20) {
                    
                    // MONTH YEAT
                    HStack {
                        Text("April 2025")
                            .font(.headline)
                            .foregroundColor(sagaGreen)
                        
                        Image(systemName: "chevron.right")
                            .font(.caption)
                            .foregroundColor(sagaGreen)
                        
                        Spacer()
                        
                        HStack(spacing: 20) {
                            Image(systemName: "chevron.left")
                            Image(systemName: "chevron.right")
                        }
                        .foregroundColor(sagaGreen)
                    }
                    .padding(.horizontal)
                    
                    // DAY NAME
                    HStack {
                        ForEach(["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"], id: \.self) { gun in
                            Text(gun)
                                .font(.caption)
                                .foregroundColor(grayDark)
                                .frame(maxWidth: .infinity)
                        }
                    }
                    
                    // DAYS BUT DRAWING MANUELLY
                    HStack {
                        Text("").frame(maxWidth: .infinity)
                        Text("1").frame(maxWidth: .infinity)
                        Text("2").frame(maxWidth: .infinity)
                        
                        // chosen one
                        Text("3")
                            .frame(maxWidth: .infinity)
                            .frame(height: 40)
                            .foregroundColor((textBlack))
                            .background(mintCream) //
                            .clipShape(Circle())
                        
                        
                        Text("4").frame(maxWidth: .infinity)
                        Text("5").frame(maxWidth: .infinity)
                        Text("").frame(maxWidth: .infinity)
                    }
                    .foregroundColor(textBlack)
                    
                    // 2nd line
                    HStack {
                        Text("6").frame(maxWidth: .infinity)
                        Text("7").frame(maxWidth: .infinity)
                        Text("8").frame(maxWidth: .infinity)
                        Text("9").frame(maxWidth: .infinity)
                        Text("10").frame(maxWidth: .infinity)
                        Text("11").frame(maxWidth: .infinity)
                        Text("12").frame(maxWidth: .infinity)
                    }
                    .foregroundColor(textBlack)
                    
                    // 3rd line
                    HStack {
                        Text("13").frame(maxWidth: .infinity)
                        Text("14").frame(maxWidth: .infinity)
                        Text("15").frame(maxWidth: .infinity)
                        Text("16").frame(maxWidth: .infinity)
                        Text("17").frame(maxWidth: .infinity)
                        Text("18").frame(maxWidth: .infinity)
                        Text("19").frame(maxWidth: .infinity)
                    }
                    .foregroundColor(textBlack)
                    
                    // 4th line
                    HStack {
                        Text("20").frame(maxWidth: .infinity)
                        
                        // Özel Renkli Gün (21)
                        Text("21")
                            .frame(maxWidth: .infinity)
                        
                        Text("22").frame(maxWidth: .infinity)
                        Text("23").frame(maxWidth: .infinity)
                        Text("24").frame(maxWidth: .infinity)
                        Text("25").frame(maxWidth: .infinity)
                        Text("26").frame(maxWidth: .infinity)
                    }
                    .foregroundColor(textBlack)
                    
                    // 5th line
                    HStack {
                        Text("27").frame(maxWidth: .infinity)
                        Text("28").frame(maxWidth: .infinity)
                        Text("29").frame(maxWidth: .infinity)
                        Text("30").frame(maxWidth: .infinity)
                        Text("").frame(maxWidth: .infinity)
                        Text("").frame(maxWidth: .infinity)
                        Text("").frame(maxWidth: .infinity)
                    }
                    .foregroundColor(textBlack)
                }
                .padding()
                .font(.system(size: 18))
                
                Spacer()
                
                // GET STARTED BUTTON
                NavigationLink(destination: MammafyDashboardView()){
                    
                    Text("Get Started")
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

#Preview {
    CalendarView()
}
