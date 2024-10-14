//
//  Events.swift
//  GolfClubMobilapp
//
//  Created by IsraelTiburcio on 10/10/24.
//

import SwiftUI

struct Events: View {
    
    let imageUrls: [String] = [
            "https://picsum.photos/370/300?random=1",
            "https://picsum.photos/370/300?random=2",
            "https://picsum.photos/370/300?random=3"
        ]
    var body: some View {
        TabView {
                    ForEach(imageUrls, id: \.self) { url in
                        AsyncImage(url: URL(string: url)) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(20)
                                .frame(width: 370, height: 300)
                        } placeholder: {
                            ProgressView() // Placeholder mientras carga
                        }
                    }
                }
                .tabViewStyle(PageTabViewStyle())
                .frame(height: 300) // Ajusta la altura del TabView
            }
        }
#Preview {
    Events()
}
