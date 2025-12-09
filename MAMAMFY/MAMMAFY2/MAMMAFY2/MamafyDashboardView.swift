import SwiftUI

struct MammafyDashboardView: View {
    
    
    let sagaGreen = Color(red: 77/255, green: 122/255, blue: 86/255)
    let textBlack = Color(red: 64/255, green: 64/255, blue: 77/255)
    let creamWhite = Color(red: 250/255, green: 250/255, blue: 249/255)
    let grayDark = Color(red: 102/255, green: 102/255, blue: 108/255)
    let mintCream = Color(red: 233/255, green: 248/255, blue: 236/255)
    
    var body: some View {
        
        
        ZStack {
            
            creamWhite.ignoresSafeArea()
            
            
            VStack {
                
                HStack {
                    Spacer()
                    
                    Text("Mammafy")
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .foregroundColor(textBlack)
                        .padding(.leading, 40)
                    
                    Spacer()
                    
                    // ICON
                    Image(systemName: "person.circle.fill")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .foregroundColor(sagaGreen)
                }
                .padding()
                
                
                ScrollView {
                    
                    VStack(spacing: 20) {
                        
                        // CARD1
                        HStack(alignment: .top) {
                            
                            //TEXT
                            VStack(alignment: .leading, spacing: 8) {
                                Text("Week 1")
                                    .font(.title3)
                                    .bold()
                                    .foregroundColor(sagaGreen)
                                
                                Text("Baby is the size of a")
                                    .font(.caption)
                                    .foregroundColor(grayDark)
                                
                                Text("Poppy Seed")
                                    .font(.title)
                                    .bold()
                                    .foregroundColor(textBlack) 
                                
                                Text("Tuesday, 2 Dec")
                                    .font(.subheadline)
                                    .fontWeight(.semibold)
                                    .foregroundColor(textBlack)
                                    .padding(.top, 5)
                                
                                Text("Next dose in: All done for today!")
                                    .font(.caption)
                                    .foregroundColor(sagaGreen)
                            }
                            
                            Spacer()
                            
                            // HEARTH ICON
                            Image(systemName: "heart.fill")
                                .font(.system(size: 40))
                                .foregroundColor(sagaGreen)
                        }
                        .padding(20)
                        .background(Color.white) //
                        .cornerRadius(20)
                        
                        
                        //YOUR PROGRESS
                        HStack {
                            VStack(alignment: .leading) {
                                Text("Your Progress")
                                    .font(.headline)
                                    .foregroundColor(.gray)
                                
                                Text("0/0 Taken")
                                    .font(.title3)
                                    .bold()
                                    .foregroundColor(textBlack)
                            }
                            
                            Spacer()
                            
                            Image(systemName: "questionmark.square")
                                .font(.system(size: 30))
                                .foregroundColor(sagaGreen)
                        }
                        .padding(.horizontal)
                        
                        
                        // ADD SUPPLEMENT
                        Button(action: {
                            print("Butona basıldı")
                        }) {
                            HStack {
                                Image(systemName: "plus.circle.fill")
                                Text("Add Supplement")
                                    .fontWeight(.bold)
                            }
                            .foregroundColor(textBlack)
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(mintCream)
                            .cornerRadius(15)
                        }
                        
                        //CARD2
                        VStack(spacing: 15) {
                            //ICON
                            Image(systemName: "doc.text")
                                .font(.system(size: 30))
                                .foregroundColor(sagaGreen)
                                .padding(10)
                                .background(
                                    RoundedRectangle(cornerRadius: 10)
                                        .stroke(sagaGreen, lineWidth: 2)
                                )
                            
                            Text("Start Your Routine")
                                .font(.title3)
                                .bold()
                                .foregroundColor(textBlack)
                            
                            Text("Add your prenatal vitamins and supplements to get reminder and track your progress")
                                .font(.footnote)
                                .foregroundColor(grayDark)
                                .multilineTextAlignment(.center)
                        }
                        .padding(30)
                        .frame(maxWidth: .infinity)
                        .background(Color.white)
                        .cornerRadius(20)
                        
                    }
                    .padding()
                }
                
            }
        }
    }
}

#Preview {
    MammafyDashboardView()
}
