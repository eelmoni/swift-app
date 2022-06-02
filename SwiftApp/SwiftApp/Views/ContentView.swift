//
//  ContentView.swift
//  SwiftApp
//
//  Created by Distillery on 31/05/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var alertIsVisible: Bool = false;
    // @State private var knockIsVisible = false;
    
    @State private var slideValue: Double = 50.0;
    
    @State private var game: Game = Game();
    
    var body: some View {
        VStack {
            Text("🎯🎯🎯\nPUT THE BULLSEYE AS CLOSE AS YOU CAN TO")
                .bold()
                .kerning(2.0)
                .multilineTextAlignment(.center)
                .lineSpacing(4.0)
                .font(.footnote)
            Text(String(game.target))
                .kerning(-1.0)
                .font(.largeTitle)
                .fontWeight(.black)
            HStack {
                Text("1").bold().font(.body)
                Slider(value: self.$slideValue, in: 1.0...100.00)
                Text("100").bold().font(.body)
            }
            Button(action: {
                self.alertIsVisible = true;
            }) {
                Text("Hit me")
            }
            // First version of "Hit me" alert
            .alert("Hello there!", isPresented: $alertIsVisible) {
              Button("Awesome!") { }
            } message: {
                let truncatedValue: Int = Int(self.slideValue);
                let roundedValue: Int = Int(self.slideValue.rounded());

                Text("Slider's value is \(self.slideValue).\nThe truncated value is \(truncatedValue).\nThe rounded value is \(roundedValue).\n" + "You scored \(self.game.points(sliderValue: roundedValue)) points this game.")
            }
            
// Knock Knoc example
//            Button(action: {
//                self.knockIsVisible = true;
//            }) {
//                Text("Knock Knock")
//            }
//            .alert("Who's There?", isPresented: $knockIsVisible) {
//              Button("Little old lady who?") { }
//            } message: {
//              Text("Little old lady")
//            }
            
// Final version of "Hit me" alert
//            .alert(
//              "Hello there!",
//              isPresented: $alertIsVisible,
//              presenting: {
//                let roundedValue = Int(sliderValue.rounded())
//                return (
//                  roundedValue,
//                  game.points(sliderValue: roundedValue)
//                )
//              } () as (roundedValue: Int, points: Int)
//            ) { data in
//              Button("Awesome!") {
//                game.startNewRound(points: data.points)
//              }
//            } message: { data in
//              Text("The slider's value is \(data.roundedValue).\n" + "You scored \(data.points) points this round.")
//            }

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
