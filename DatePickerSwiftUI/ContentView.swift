//
//  ContentView.swift
//  DatePickerSwiftUI
//
//  Created by Arslan on 24/01/2024.
//

import SwiftUI

struct ContentView: View {
@State private var isDateSelected = false
    @State var selectedDate = "Select date"
    var body: some View {
        ZStack {
            VStack(spacing:0){
               TitleView(title:"Custom Date Picker", subtitle: "")
                    .padding(EdgeInsets(top:80, leading:0, bottom: 40, trailing: 0))
                VStack{
                    Button(action: {
                        isDateSelected.toggle()
                    }, label: {
                        HStack{
                            Text(selectedDate)
                                .foregroundColor(.gray)
                              .padding(.leading)
                            Spacer()
                        }
                    })
                }.sheet(isPresented: $isDateSelected, content: {
                   DatePickerView( selected: $selectedDate, selectedDate: $selectedDate)

                })
                .padding()
                .foregroundColor(.white)
                .overlay(
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(Color.gray, lineWidth: 0.5)
                )
                .background(.white)

                .cornerRadius(5)
                .padding(.horizontal)
                Spacer()
            }
           

            
        }.background(Color.bgColour)
        
    }
}

#Preview {
    ContentView()
}
