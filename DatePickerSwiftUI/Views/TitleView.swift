//
//  TitleView.swift
//  DatePickerSwiftUI
//
//  Created by Xeven Dev on 24/01/2024.
//

import SwiftUI

struct TitleView: View {
    var title: String
       var subtitle: String
    var body: some View {
        VStack (alignment: .center){
            Text(title)
              .font(
                Font.custom("Inter", size: 28)
                  .weight(.medium)
              )
              .foregroundColor(.black)
              .multilineTextAlignment(.center)
            
            Text(subtitle)
              .font(Font.custom("Inter", size: 14))
              .foregroundColor(Color(red: 0.43, green: 0.43, blue: 0.43))
              .padding(.top,1)
              .padding(.horizontal)
              .multilineTextAlignment(.center)
              .fixedSize(horizontal: false, vertical: true)
              
        }
        .padding(.bottom, 20)
    }
}
