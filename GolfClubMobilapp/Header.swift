//
//  Header.swift
//  GolfClubMobilapp
//
//  Created by IsraelTiburcio on 10/10/24.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack{
            Text("Grand Key Club")
                .font(.title)
                .foregroundStyle(.gray)
            
            Spacer()
            
            Image(systemName: "list.bullet")
                .font(.system(size: 30))
                .foregroundColor(Color(red: 0.0, green: 0.5, blue: 0.0))
            
          
        }.padding()
    }
}

#Preview {
    Header()
}
