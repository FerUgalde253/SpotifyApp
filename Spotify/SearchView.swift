//
//  SearchView.swift
//  Spotify
//
//  Created by Fernando Ugalde on 03/09/23.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        SearchInfoView()
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
struct CategoryView: View {
    var image: String
    var text: String
    var color: Color
    var body: some View {
        HStack{
            Text(text)
                .foregroundColor(.white)
                .font(.custom("Arial", size: 15).bold())
                .frame(width: 105, height: 110)
            Image(image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .padding(.bottom, -25)
                .padding(.leading, 40)
                .frame(width: 60, height: 60)
                .rotationEffect(.degrees(22))
        }
        .background(color)
        .cornerRadius(5)
        .frame(width: 180,height: 100)
    }
}
struct CustomTextFieldView: View {
    @State private var content = ""
    var title: String
    var body: some View {
        VStack{
            TextField(title,text: self.$content)
                .foregroundColor(.black)
                .background(Color.white)
                .padding(.leading)
                .keyboardType(.default)
        }
    }
}
struct ImageView: View{
    var systemImage: String
    var meassures: CGFloat
    
    var body: some View{
        ZStack{
            Image(systemName: systemImage)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: meassures, height: meassures)
                .foregroundColor(CustomColor.darkGrayBackgroundColor)
        }
    }
}

struct SearchInfoView: View {
    var body: some View {
        VStack {
            TitleView(text: "Search", Fontsize: 35)
            HStack{
                HStack{
                    ImageView(systemImage: "magnifyingglass",meassures: 20)
                    CustomTextFieldView(title: "Artists, songs, or poscasts")
                }
                .padding()
                .frame(width: 250, height:40)
                .background(Color.white)
                .cornerRadius(7.5)
                .shadow(color: .black.opacity(0.12), radius: 0.5, x: 2, y: 3)
                .padding(.leading, 0)
                ImageView(systemImage: "mic",meassures: 20)
                    .padding()
                ImageView(systemImage: "camera",meassures: 20)
                    .padding()
            }
            
            
            TitleView(text: "Your top generes", Fontsize: 15)
                .padding(.top, 50)
            HStack{
                CategoryView(image: "HeavyQueens", text: "Metal", color: CustomColor.redBackgroundColor)
                CategoryView(image: "DeepHouse", text: "Deep House", color: CustomColor.orangeBackgroundColor)
            }
            .padding()
            TitleView(text: "Popular podcast categories", Fontsize: 15)
            HStack{
                CategoryView(image: "LeyendasLegendarias", text: "Comedy", color: CustomColor.redBackgroundColor)
                CategoryView(image: "RelatosDeLaNoche", text: "Histories", color: CustomColor.blueBackgroundColor)
                }
            .padding()
            TitleView(text: "Browse all", Fontsize: 15)
            HStack{
                CategoryView(image: "HistoriasDelMasAca", text: "Podcasts", color: CustomColor.orangeBackgroundColor)
                CategoryView(image: "CapsulaTiempo", text: "Made for you", color: CustomColor.grayBackgroundColor)
                }
            .padding()
            
        }
        .frame(maxWidth: .infinity, maxHeight: .greatestFiniteMagnitude)
        .background(LinearGradient(gradient: Gradient(colors: [CustomColor.SecondBackgroundColor, CustomColor.SecondBackgroundColor]), startPoint: .topLeading, endPoint: .bottomTrailing))
    }
}
