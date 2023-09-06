//
//  ContentView.swift
//  Spotify
//
//  Created by Fernando Ugalde on 03/09/23.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView{
            ZStack{
                SpotifyTabView()
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

struct TitleView: View {
    var text: String
    var Fontsize: CGFloat
    var body: some View {
        VStack{
            Text(text)
                .foregroundColor(.white)
                .font(.custom("Arial", size: Fontsize).bold())
                .padding(.leading, -180)
        }
    }
}
struct PlaylistView: View {
    var image: String
    var text: String
    var body: some View {
        HStack{
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 50, height: 50)
            Text(text)
                .foregroundColor(.white)
                .font(.custom("Arial", size: 15).bold())
                .multilineTextAlignment(.center)
                .frame(width: 130, height: 50)
        }
        .background(CustomColor.tungsten)
        .frame(width: 180,height: 50)
        .cornerRadius(5)
    }
    
}
struct RecentlyPlayedView: View {
    var image: String
    var text: String
    var body: some View {
        VStack{
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 115, height: 115)
            Text(text)
                .foregroundColor(.white)
                .font(.custom("Arial", size: 15).bold())
                .frame(width: 100, height: 40)
        }
        .background(Color.clear)
        .frame(width: 115,height: 50)
    }
}

struct FirstView: View {
    var body: some View {
        VStack {
            Image(systemName: "gearshape")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .foregroundColor(.white)
                .frame(width: 27, height: 27)
                .padding(.top, -50)
                .padding(.leading, 330)
                
            TitleView(text: "Good evening", Fontsize: 22)
                .padding(.top, -5)
            HStack{
                VStack{
                    PlaylistView(image: "Power", text: "Power")
                    PlaylistView(image: "Travel", text: "Travel")
                    PlaylistView(image: "Metal", text: "Metal")
                }
                VStack{
                    PlaylistView(image: "LanaDelRey", text: "This is lana del rey")
                    PlaylistView(image: "NuMetal", text: "NuMetal")
                    PlaylistView(image: "Soul", text: "Soul")
                }
            }
            TitleView(text: "Recently played", Fontsize: 22)
                .padding()
            HStack{
                RecentlyPlayedView(image: "Nightwish", text: "This is Nightwish")
                RecentlyPlayedView(image: "Epica", text: "This is Epica")
                RecentlyPlayedView(image: "Florence", text: "This is Florence")
            }
            .padding(.top,50)
            TitleView(text: "New releases for you", Fontsize: 22)
                .padding(.leading, 50)
                .padding(.top, 70)
            HStack{
                RecentlyPlayedView(image: "HeavyBallads", text: "Heavy Ballads")
                RecentlyPlayedView(image: "MetalCovers", text: "Metal Covers")
                RecentlyPlayedView(image: "00sMetalClassics", text: "00s Metal Classics")
            }
            .padding(.top,70)
            
        }
        .frame(maxWidth: .infinity, maxHeight: .greatestFiniteMagnitude)
        .background(LinearGradient(gradient: Gradient(colors: [CustomColor.backgroundColor, .black]), startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}
struct SpotifyTabView: View {
    var body: some View {
        TabView{
            Group{
                NavigationView {
                    FirstView()
                }
                .tabItem{
                    Label("Home", systemImage: "house.fill")
                }
                SearchView()
                    .tabItem{
                        Label("Search", systemImage: "magnifyingglass")
                    }
                SearchingToolView()
                    .tabItem{
                        Label("Your Library", systemImage: "books.vertical")
                    }
            }
            .toolbarBackground(CustomColor.tungsten, for: .tabBar)
            .toolbarBackground(.visible, for: .tabBar)
        }
        .accentColor(Color.white)
    }
}
