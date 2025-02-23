//
//  HourlyForecast.swift
//  Weather
//
//  Created by Ethan AK on 2/23/25.
//

import SwiftUI

struct HourlyForecast: View {
    var time : String
    var temperature : String
    var image : String
    
    var body: some View {
        
        VStack{
            Text(time)
                .font(.subheadline)
                .fontWeight(.bold)
            Image(systemName: image)
                .foregroundStyle(.white)
                .font(.title)
            Text(temperature)
                .font(.subheadline)
                .fontWeight(.bold)
        }
    }
}

#Preview {
    HourlyForecast(time: "7PM", temperature: "70°", image: "sun.max")
}
