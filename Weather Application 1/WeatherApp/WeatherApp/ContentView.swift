//
//  ContentView.swift
//  swiftUI-Weather
//
//  Created by AUC on 01/04/2026.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight: isNight)
            
            VStack{
                CityTextViw(cityName: "Cupertino, CA")
                
                MainWeatherView(imageName: isNight ? "moon.stars.fill": "cloud.sun.fill", temperature: 76)
                
                HStack(spacing: 10){
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 74)
                }
                HStack{
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "sun.max.fill",
                                   temperature: 88)
                }
                HStack{
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "wind.snow",
                                   temperature: 55)
                }
                HStack{
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "sunset.fill",
                                   temperature: 60)
                }
                HStack{
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "snow",
                                   temperature: 25)
                }
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time", textColor: .white, backgroundColor: .white)
                }
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
    ContentView()
}
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text("dayOfWeek")
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white )
            Image(systemName: "imageName")
                .symbolRenderingMode(.multicolor)
                .resizable()
               // .foregroundColor(.pink)
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
            
            Text("\(temperature)")
                .font(.system(size: 28, weight: .medium))
                .foregroundStyle(.white)
        }
    }
}

struct BackgroundView: View {
     var isNight: Bool
    
    var body: some View {
        
        //LinearGradient(gradient: //Gradient(colors: [isNight //? .black : .blue, isNight //? .gray : //Color("lightBlue")]), //startPoint: .topLeading, //endPoint: .trailing)
           // .edgesIgnoringSafeArea(.all)
        ConatinerRelativeShape()
            .fill(isNight ? Color.black.gradiernt : Color.blue.gradient)
            .ignoreSafeArea()
    }
}
struct CityTextViw: View {
    
    var cityName: String
    
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .padding()

    }
}

struct MainWeatherView: View {
    
    var imageName: String
    var temperature: Int

    
    
    var body: some View {
        VStack(spacing: 10){
            Image(systemName: imageName )
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)")
                .font(.system(size: 70, weight: .medium))
                .foregroundStyle(.white)
        }
        .padding(.bottom, 40)
    }
}

