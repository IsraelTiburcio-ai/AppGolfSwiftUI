//
//  ContentView.swift
//  GolfClubMobilapp
//
//  Created by IsraelTiburcio on 10/10/24.
//

import SwiftUI

struct ContentView: View {
    let iconosIZQ = ["scale.3d", "figure.golf","person", ]
    let nombresIZQ = ["Mobile CRM", "Tee Time", "Directory"]
    
    let iconosDerecha = ["calendar.badge.plus","fork.knife","dollarsign.square.fill"]
    let nombresDerecha = ["Calendar" , "Dining Reservation", "Statements"]
    var body: some View {
        
        ScrollView{
            VStack {
                Header()
                Events()
                
                //   ScrollView{
                       HStack{
                           VStack {
                               ForEach(0..<3){ item in
                                   Cards(
                                       icons: iconosIZQ[item],
                                       names: nombresIZQ[item])
                                   .padding([.leading, .bottom])
                                   
                               }
                           }
                           
                           VStack {
                               ForEach(0..<3){ item in
                                   Cards(
                                       icons: iconosDerecha[item],
                                       names: nombresDerecha[item])
                                   .padding([.top, .trailing])
                                   
                               }
                           }
                       }
                   //}
            }
        }.background(Color(hex: "#84a98c").opacity(0.1)).refreshable {
            
        }
    }
}
    #Preview {
        ContentView()
    }
