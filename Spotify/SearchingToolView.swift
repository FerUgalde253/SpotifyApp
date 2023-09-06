//
//  SearchingToolView.swift
//  Spotify
//
//  Created by Fernando Ugalde on 04/09/23.
//

import SwiftUI

struct SearchingToolView: View {
    var body: some View {
        LibraryView()
    }
}

struct SearchingToolView_Previews: PreviewProvider {
    static var previews: some View {
        SearchingToolView()
    }
}

struct CategoryImageView: View {
    var image: String
    var text: String
    var body: some View {
        HStack{
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 70, height: 70)
                .cornerRadius(35)
            Text(text)
                .foregroundColor(.white)
                .background(Color.clear)
                .font(.custom("Arial", size: 17).bold())
                .frame(width: 150, height: 50)
                .padding(.leading, -20)
        }
        .background(Color.clear)
        .frame(width: 250,height: 70)
        .cornerRadius(5)

    }
    
}

struct LibraryView: View {
    var body: some View {
        VStack {
            
            HStack{
                TitleView(text: "Music", Fontsize: 35)
                TitleView(text: "Podcasts", Fontsize: 35)
                    .padding(.leading, 120)
                    .opacity(0.5)
            }
            .padding(.top)
            .padding(.leading, 120)
            
            HStack{
                TitleView(text: "Playlist", Fontsize: 15)
                    .opacity(0.5)
                TitleView(text: "Artists", Fontsize: 15)
                    .padding(.leading, 70)
                    .underline(color: CustomColor.spotifyColor)
                TitleView(text: "Albums", Fontsize: 15)
                    .padding(.leading, 70)
                    .opacity(0.5)
            }
            .padding(.top, 30)
            .padding(.leading, 155)
            
            VStack{
                CategoryImageView(image: "Ensiferum", text: "Ensiferum")
                CategoryImageView(image: "SamSmit", text: "Sam Smith")
                    .padding(.top, 15)
                CategoryImageView(image: "Alt-j", text: "Alt-j")
                    .padding(.top, 15)
                CategoryImageView(image: "Ratatat", text: "Ratatat")
                    .padding(.top, 15)
                CategoryImageView(image: "DaftPunk", text: "DaftPunk")
                    .padding(.top, 15)
                CategoryImageView(image: "Gorillaz", text: "Gorillaz")
                    .padding(.top, 15)
            }
            .padding(.top, 40)
            .padding(.leading, -150)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .greatestFiniteMagnitude)
        .background(LinearGradient(gradient: Gradient(colors: [CustomColor.SecondBackgroundColor, CustomColor.SecondBackgroundColor]), startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}
