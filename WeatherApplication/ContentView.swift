//
//  ContentView.swift
//  WeatherApplication
//
//  Created by Ekaterina Volkova on 15/01/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            Spacer()
            HStack(alignment: .center, spacing: 16) {
                Image(systemName: "sun.max.fill")
                    .font(.largeTitle)
                Text("24º")
                    .font(.largeTitle)
            }
            Text("Sunny outside.\nDon't forget your hat!")
                .font(.body)
                .multilineTextAlignment(.center)
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
