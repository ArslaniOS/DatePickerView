//
//  CustomDatePicker.swift
//  DatePickerSwiftUI
//
//  Created by Xeven Dev on 24/01/2024.
//

import SwiftUI

struct DatePickerView: View {
    @Environment(\.presentationMode) var presentationMode
    @State var pickDate = Date()
    @Binding var selected :  String
    let thirty = Calendar.current.date(byAdding: .day, value: 0, to: Date())!

    @Binding var selectedDate : String

     var body: some View {
        VStack{
            Text("Select Date")
                .font(large)
                .bold()
            HStack{
                DatePicker("", selection: $pickDate,
                           displayedComponents: .date)
                .datePickerStyle(WheelDatePickerStyle())
                    
                    .cornerRadius(corner)
                    .padding(.trailing, 40)

            }.frame(width: screenWidth-30)
                .overlay(
                    RoundedRectangle(cornerRadius: corner)
                        .stroke(Color.gray, lineWidth:0.5)
                )
                .background(Color.white)
            HStack(){
                Button(action: {
                    if self.selectedDate == "" {
                        let dateFormatter = DateFormatter()
                        dateFormatter.dateFormat = "YYYY-MM-dd"
                        let stringDate = dateFormatter.string(from: Date())

                        print(stringDate)
                        self.selectedDate = stringDate
                        self.selected = stringDate
                    }
                    presentationMode.wrappedValue.dismiss()
                    
                }, label: {
                    Text("OK")
                        .bold()
                        .frame(width:screenHeight > 700 ? 140 : 150, height:  screenHeight > 700 ? 60 : 50)
                        .font(.system(size: 20))
                        .foregroundColor(.white)
                        .background(Color.appBlueColor)
                })
                    .cornerRadius(10)
                    .shadow(color: Color(.black).opacity(0.5), radius: 10, x: 10, y: 10)
                    .padding()
                Button(action: {
                    presentationMode.wrappedValue.dismiss()
                }, label: {
                    HStack(spacing: 30) {
                        Text("CANCEL")
                            .bold()
                            .frame(width:screenHeight > 700 ? 140 : 150, height:screenHeight > 700 ? 60 : 50)
                            .font(.system(size: 20))
                            .foregroundColor(.white)
                            .background(Color.yellow)
                    }
                })
                    .cornerRadius(10)
                    .shadow(color: Color.black.opacity(0.5), radius: 10, x: 10, y: 10)
                    .padding()
            }
            .padding()
        }
        
        
        .onChange(of: pickDate) { _ in
            print(pickDate)
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = "YYYY-MM-dd"
            let stringDate = dateFormatter.string(from: pickDate)

            print(stringDate)
            self.selectedDate = stringDate
            self.selected = stringDate

        }
    }

}

#Preview {
    DatePickerView(selected:.constant(""), selectedDate:.constant(""))
}
