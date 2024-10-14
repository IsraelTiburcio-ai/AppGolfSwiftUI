//
//  Cards.swift
//  GolfClubMobilapp
//
//  Created by IsraelTiburcio on 10/10/24.
//

import SwiftUI


struct Cards: View {
    @State var icons: String = ""
    @State var names: String = ""
    
    
    var body: some View {
        VStack{
            Image(systemName: icons)
                .font(.system(size: 30))
                .foregroundColor(Color(hex: "#84a98c"))
            
            Text(names)
                .font(.caption)
                .foregroundStyle(Color(hex: "#84a98c"))
            
        }.padding(40)
            .frame(width: 180, height:180)
            .background(.white)
            .cornerRadius(20)
        
    }
    
}
#Preview {
    Cards()
}
