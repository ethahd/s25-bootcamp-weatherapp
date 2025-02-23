//
//  HourlyForecastView.swift
//  Weather
//
//  Created by Ethan AK on 2/23/25.
//

import SwiftUI

struct HourlyForecastView: View {
    let items = [
        HourlyForecast(time: "Now", temperature: "52°", image: "sun.max.fill"),
        HourlyForecast(time: "1PM", temperature: "53°", image: "sun.max"),
        HourlyForecast(time: "2PM", temperature: "54°", image: "sun.max"),
        HourlyForecast(time: "3PM", temperature: "54°", image: "sun.max"),
        HourlyForecast(time: "4PM", temperature: "54°", image: "sun.max"),
        HourlyForecast(time: "5PM", temperature: "52°", image: "sun.max"),
        HourlyForecast(time: "6PM", temperature: "48°", image: "cloud.sun.fill"),
        
    ]
    var description : String
    var body: some View {
        VStack{
            Text(description)
                .font(.body).foregroundColor(.white)
                .padding()
            Capsule()
                .frame(width:200, height: 1)
                .foregroundColor(.white)
            ScrollView (.horizontal) {
                HStack(spacing: 10){
                    ForEach(0..<items.count, id: \.self) { index in
                        items[index]
                    }
                }
            }
        }
        .background(Color.blue.opacity(0.5))
        .clipShape(RoundedRectangle(cornerRadius: 10))
        
        
    }
}

#Preview {
    HourlyForecastView(description: "Sunny day with good vibes. May change randomly to snow so watch out hoe")
}
