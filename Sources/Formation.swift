//
//  File.swift
//  
//
//  Created by Noel Obaseki on 07/08/2023.
//

import Foundation
import Foundation
import SwiftUI

@available(iOS 13.0, *)
@available(macOS 10.15, *)
public struct Formation: View {
    private var formation: [[String]]
        
        private var numbers: [String]
        
        private var jerseyNumberColor: Color
        
        private var jerseyColor: Color
        
        private var side: Side
        
        private var vSpacing: CGFloat
        
        private var hSpacing: CGFloat
        
        private var width: CGFloat
        
        private var height: CGFloat
        
        private var transformedformation:[[String]] {
            var resultFormation: [[String]] = []
                var numberIndex = 0

                for row in formation {
                    var newRow: [String] = []
                    for player in row {
                        newRow.append("\(numbers[numberIndex]) - \(player)")
                        numberIndex += 1
                    }
                    resultFormation.append(newRow)
                }
               return resultFormation
           }
        
        
        
        public init(formation: [[String]] = [
            ["DefaultGK"],
            ["DefaultDF", "DefaultDF", "DefaultDF", "DefaultDF"],
            ["DefaultMF", "DefaultMF", "DefaultMF"],
            ["DefaultST", "DefaultST", "DefaultST"]
        ], numbers: [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11"], jerseyNumberColor: Color  = .black, jerseyColor: Color  = .red, side: Side = .home, vSpacing: CGFloat = 40, hSpacing: CGFloat = 20, width: CGFloat = 80, height: CGFloat = 80) {
             self.formation = formation
             self.numbers = numbers
             self.jerseyNumberColor = jerseyNumberColor
             self.jerseyColor = jerseyColor
             self.side = side
             self.vSpacing = vSpacing
             self.hSpacing = hSpacing
             self.width = width
             self.height = height
         }
         
        
        public var body: some View {
             VStack(spacing: vSpacing) {
                 ForEach(Array(transformedformation.enumerated()), id: \.element) { (rowIndex, row) in
                     HStack(spacing: hSpacing) {
                         ForEach(row, id: \.self) { playerName in
                             if !playerName.isEmpty {
                                 Player(playerItem: playerName, jerseyNumberColor :jerseyNumberColor, jerseyColor: jerseyColor, side: side, width: width, height: height)
                             }
                         }
                     }
                 }
             }
             .padding()
         }
        
    }

@available(iOS 13.0, *)
@available(macOS 10.15, *)
    struct HomeShirt: Shape {
        func path(in rect: CGRect) -> Path {
            var path = Path()
            let width = rect.size.width
            let height = rect.size.height
            path.move(to: CGPoint(x: 0.5*width, y: 0.08203*height))
            path.move(to: CGPoint(x: 0.6875*width, y: 0.08594*height))
            path.addCurve(to: CGPoint(x: 0.5*width, y: 0.25195*height), control1: CGPoint(x: 0.67678*width, y: 0.17922*height), control2: CGPoint(x: 0.59611*width, y: 0.25195*height))
            path.addCurve(to: CGPoint(x: 0.3125*width, y: 0.08594*height), control1: CGPoint(x: 0.40389*width, y: 0.25195*height), control2: CGPoint(x: 0.32322*width, y: 0.17922*height))
            path.addLine(to: CGPoint(x: 0.03125*width, y: 0.18359*height))
            path.addLine(to: CGPoint(x: 0.06641*width, y: 0.40625*height))
            path.addLine(to: CGPoint(x: 0.18693*width, y: 0.42074*height))
            path.addCurve(to: CGPoint(x: 0.2008*width, y: 0.43674*height), control1: CGPoint(x: 0.20076*width, y: 0.4225*height), control2: CGPoint(x: 0.2008*width, y: 0.4225*height))
            path.addLine(to: CGPoint(x: 0.1875*width, y: 0.9375*height))
            path.addLine(to: CGPoint(x: 0.8125*width, y: 0.9375*height))
            path.addLine(to: CGPoint(x: 0.7992*width, y: 0.43674*height))
            path.addCurve(to: CGPoint(x: 0.81307*width, y: 0.42074*height), control1: CGPoint(x: 0.79879*width, y: 0.42307*height), control2: CGPoint(x: 0.79879*width, y: 0.42307*height))
            path.addLine(to: CGPoint(x: 0.93359*width, y: 0.40625*height))
            path.addLine(to: CGPoint(x: 0.96875*width, y: 0.18359*height))
            path.closeSubpath()
            return path
        }
    }

@available(iOS 13.0, *)
@available(macOS 10.15, *)
    struct AwayShirt: Shape {
        func path(in rect: CGRect) -> Path {
            var path = Path()
            let width = rect.size.width
            let height = rect.size.height
            
            path.move(to: CGPoint(x: 0.5 * width, y: 0.91797 * height))
            path.move(to: CGPoint(x: 0.3125 * width, y: 0.91406 * height))
            path.addCurve(to: CGPoint(x: 0.5 * width, y: 0.74805 * height), control1: CGPoint(x: 0.32322 * width, y: 0.82078 * height), control2: CGPoint(x: 0.40389 * width, y: 0.74805 * height))
            path.addCurve(to: CGPoint(x: 0.6875 * width, y: 0.91406 * height), control1: CGPoint(x: 0.59611 * width, y: 0.74805 * height), control2: CGPoint(x: 0.67678 * width, y: 0.82078 * height))
            path.addLine(to: CGPoint(x: 0.96875 * width, y: 0.81641 * height))
            path.addLine(to: CGPoint(x: 0.93359 * width, y: 0.59375 * height))
            path.addLine(to: CGPoint(x: 0.81307 * width, y: 0.57926 * height))
            path.addCurve(to: CGPoint(x: 0.7992 * width, y: 0.56326 * height), control1: CGPoint(x: 0.79879 * width, y: 0.5775 * height), control2: CGPoint(x: 0.79879 * width, y: 0.5775 * height))
            path.addLine(to: CGPoint(x: 0.8125 * width, y: 0.0625 * height))
            path.addLine(to: CGPoint(x: 0.1875 * width, y: 0.0625 * height))
            path.addLine(to: CGPoint(x: 0.2008 * width, y: 0.56326 * height))
            path.addCurve(to: CGPoint(x: 0.18693 * width, y: 0.57926 * height), control1: CGPoint(x: 0.20121 * width, y: 0.57693 * height), control2: CGPoint(x: 0.20121 * width, y: 0.57693 * height))
            path.addLine(to: CGPoint(x: 0.06641 * width, y: 0.59375 * height))
            path.addLine(to: CGPoint(x: 0.03125 * width, y: 0.81641 * height))
            path.closeSubpath()

            
            return path
        }
    }
        
@available(iOS 13.0, *)
@available(macOS 10.15, *)
    struct Jersey: View {
        var jerseyNumber: String
        var jerseyNumberColor: Color
        var jerseyColor: Color
        var side: Side
        var width: CGFloat
        var height: CGFloat
        
        
        var body: some View {
            ZStack {
                if side == .home {
                    HomeShirt()
                    .fill(jerseyColor)
                    .frame(width: width, height: height)
                } else if side == .away {
                    AwayShirt()
                        .fill(jerseyColor)
                        .frame(width: width, height: height)
                }
            
                Text(jerseyNumber)
                    .font(.system(size: 20, weight: .bold, design: .default))
                    .foregroundColor(jerseyNumberColor)
                
                
            }
        }
    }


@available(iOS 13.0, *)
@available(macOS 10.15, *)
    struct Player: View {
        
        var playerItem: String
        var jerseyNumberColor: Color
        var jerseyColor: Color
        var side: Side
        var width: CGFloat
        var height: CGFloat
        
        var playerName:String {
            let separatedStrings = playerItem.components(separatedBy: " - ")
            return separatedStrings[1]
        }
       
        var playerNumber:String {
            let separatedStrings = playerItem.components(separatedBy: " - ")
            return separatedStrings[0]
        }
        
        var body: some View {
            GeometryReader { geometry in
                VStack {
                    Jersey(jerseyNumber: playerNumber , jerseyNumberColor: jerseyNumberColor, jerseyColor: jerseyColor, side: side, width: width, height: height)
                    
                    Text(playerName)
                        .font(.system(size: fontSize(for: geometry.size.width), weight: .bold))
                        .lineLimit(1)
                        .frame(width: geometry.size.width, alignment: .center)
                        .minimumScaleFactor(0.2)
                        .allowsTightening(true)
                        .minimumScaleFactor(0.5)
                        .foregroundColor(.black)
                }
            }
        }
    }
        
    private func fontSize(for width: CGFloat) -> CGFloat {
            let baseWidth: CGFloat = 80.0
            let baseFontSize: CGFloat = 20.0
            let scaleFactor = width / baseWidth
            return baseFontSize * scaleFactor
        }

    public enum Side {
            case home
            case away
        }

