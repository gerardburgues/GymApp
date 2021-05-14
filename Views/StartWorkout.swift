//
//  StartWorkout.swift
//  GymApp
//
//  Created by Bernat Puig Font on 20/4/21.
//

import SwiftUI
import FirebaseDatabase

struct StartWorkout: View {
    
    @ObservedObject private var viewModel = ListExerciseViewModel()
    
    @State var minutes1: Int = 0
    @State var seconds1: Int = 0
    @State var minutes2: Int = 2
    @State var seconds2: Int = 0
    @State var timerIsPaused1: Bool = true
    @State var timerIsPaused2: Bool = true
    @State var text1 = ""
    @State var timer1: Timer? = nil
    @State var timer2: Timer? = nil
    
    var exercises: [String]
    
    var body: some View {
        VStack {
            HStack {
                Spacer().frame(width: 200, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                if minutes1 < 10 && seconds1 < 10{
                    Text("0\(minutes1):0\(seconds1)")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(minWidth: 0, maxWidth: 120,minHeight: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .font(.title)
                        .padding(.all)
                }
                else if minutes1 < 10 {
                    Text("0\(minutes1):\(seconds1)")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(minWidth: 0, maxWidth: 120,minHeight: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .font(.title)
                        .padding(.all)
                }
                else if seconds1 < 10 {
                    Text("\(minutes1):0\(seconds1)")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(minWidth: 0, maxWidth: 120,minHeight: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .font(.title)
                        .padding(.all)
                }
                else  {
                    Text("\(minutes1):\(seconds1)")
                        .font(.title)
                        .multilineTextAlignment(.center)
                        .foregroundColor(.white)
                        .frame(minWidth: 0, maxWidth: 120,minHeight: 50)
                        .background(Color.blue)
                        .cornerRadius(10)
                        .font(.title)
                        .padding(.all)
                }
                
            }.position(x: 200, y: 80)
            
            Button(action:{
                if timerIsPaused1 {
                    startTimer1()
                }
                if timerIsPaused2 {
                    startTimer2()
                }
                print("NEXT")
            }){
                Text("START WORKOUT")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(minWidth: 0, maxWidth: 300,minHeight: 90)
                    .background(Color.gray)
                    .cornerRadius(10)
                    .font(.title)
                    .padding(.all)
            }
            
            Spacer().frame(width: 200, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            if viewModel.exerc.count > 0 {
                let exercise = viewModel.exerc[0]
                Image(exercise.image)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(5)
                    .padding(.all)
            }
            else {
                Image("Lunges")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .cornerRadius(5)
                    .padding(.all)
            }
            
            if minutes2 < 10 && seconds2 < 10{
                Text("0\(minutes2):0\(seconds2)")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(minWidth: 0, maxWidth: 120,minHeight: 50)
                    .background(Color.black)
                    .cornerRadius(10)
                    .font(.title)
                    .padding(.all)
            }
            else if minutes2 < 10 {
                Text("0\(minutes2):\(seconds2)")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(minWidth: 0, maxWidth: 120,minHeight: 50)
                    .background(Color.black)
                    .cornerRadius(10)
                    .font(.title)
                    .padding(.all)
            }
            else if seconds2 < 10 {
                Text("\(minutes2):0\(seconds2)")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(minWidth: 0, maxWidth: 120,minHeight: 50)
                    .background(Color.black)
                    .cornerRadius(10)
                    .font(.title)
                    .padding(.all)
            }
            else {
                Text("\(minutes2):\(seconds2)")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(minWidth: 0, maxWidth: 120,minHeight: 50)
                    .background(Color.black)
                    .cornerRadius(10)
                    .font(.title)
                    .padding(.all)
            }
            
            Spacer().frame(width: 200, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            HStack {
                Spacer()
                Button(action:{
                    self.stopTimer2()
                    self.resetTimer(x: 2)
                    self.minutes2 = 2
                    print("NEXT")
                }){
                    NavigationLink(destination: ExerciseWorkout(minutes1: minutes1, seconds1: seconds1, exercises: exercises)){
                        
                            Image(systemName: "arrow.right")
                                .resizable()
                                .frame(width: 40, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                                .aspectRatio(contentMode: .fit)
                                .padding(.all)
                                .background(Color.blue)
                                .cornerRadius(10)
                                .foregroundColor(Color.white)
                    }
                }
            }
        }.background(Image("image"))
        .edgesIgnoringSafeArea([.top])
        .onAppear(){viewModel.fetchData()}
    }
    
    func startTimer1(){
        timerIsPaused1 = false
        timer1 = Timer.scheduledTimer(withTimeInterval: 1, repeats: true){ tempTimer in
            if self.seconds1 == 59 {
                self.seconds1 = 0
                if self.minutes1 == 59 {
                    self.minutes1 = 0
                }
                else {
                    self.minutes1 = self.minutes1 + 1
                }
            }
            else {
                self.seconds1 = self.seconds1 + 1
            }
        }
    }
    
    func startTimer2(){
        timerIsPaused2 = false
        timer2 = Timer.scheduledTimer(withTimeInterval: 1, repeats: true){ tempTimer in
            if self.seconds2 == 0 {
                self.seconds2 = 59
                if self.minutes2 == 0 {
                    self.minutes2 = 59
                }
                else {
                    self.minutes2 = self.minutes2 - 1
                }
            }
            else {
                self.seconds2 = self.seconds2 - 1
            }
        }
    }
    
    func stopTimer1(){
        timerIsPaused1 = true
        timer1?.invalidate()
        timer1 = nil
    }
    
    func stopTimer2(){
        timerIsPaused2 = true
        timer2?.invalidate()
        timer2 = nil
    }
    
    func resetTimer(x: Int){
        if x == 1 {
            self.minutes1 = 0
            self.seconds1 = 0
        }
        else {
            self.minutes2 = 2
            self.seconds2 = 0
        }
    }
}

struct StartWorkout_Previews: PreviewProvider {
    static var previews: some View {
        StartWorkout(exercises: [])
    }
}
