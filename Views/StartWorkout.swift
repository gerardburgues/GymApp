//
//  StartWorkout.swift
//  GymApp
//
//  Created by Bernat Puig Font on 20/4/21.
//

import SwiftUI
import FirebaseDatabase

struct StartWorkout: View {
    @State var level: String
    @State var minutes: Int
    
    @State var exercises: [String] = []
    
    
    var body: some View {
        VStack {
            Text("START WORKOUT")
                    .font(.title)
                    .multilineTextAlignment(.center)
                    .foregroundColor(.white)
                    .frame(minWidth: 0, maxWidth: 300,minHeight: 90)
                    .background(Color.gray)
                    .cornerRadius(10)
                    .font(.title)
                    .padding(.all)
            
            
            Spacer().frame(width: 200, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            
            HStack {
                NavigationLink(destination: ExerciseWorkout(exercises: exercises)){
                        let _ = print("Exercises \(exercises)")
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
        }.background(Image("image"))
        .edgesIgnoringSafeArea([.top])
        .onAppear(){fetch()}
    }
    
    private func fetch(){
        let _ = print("Level \(level) and minutes \(minutes)")
        if level == "Easy" && minutes == 20 {
            self.exercises = ["Shake shoulders","Australian chin ups","Parcial Australian chin ups","Australian Pull ups","Burpees","Crunch lumbar","Running in site"]
        }
        else if level == "Easy" && minutes == 30 {
            self.exercises = ["Push ups","Squat Calf-Raise","Stiff-Leg Ankle Hop","Wall Sit","Sumo Squat","Reverse Lunge","Half burpees","Hollow body tucked crunches","Isometric knee raises","Isometic push ups"]
        }
        else if level == "Easy" && minutes == 40 {
            self.exercises = ["Shake shoulders","Australian chin ups","Parcial Australian chin ups","Push ups","Squat Calf-Raise","Stiff-Leg Ankle Hop","Wall Sit","Sumo Squat","Reverse Lunge","Half burpees","Hollow body tucked crunches","Isometric knee raises","Holding Knee raises"]
        }
        else if level == "Easy" && minutes == 50 {
            self.exercises = ["Leg raises on the floor","Mountain climbers","Planche body","Shoulder taps","Tucked hollow body hold","Short dips","Bank dips","Negative dips","Femoral curl","Isometric squat","Explosive squats","Squat Calf-Raise","Stiff-Leg Ankle Hop","Wall Sit","Sumo Squat","Reverse Lunge","Isometic push ups"]
        }
        else if level == "Medium" && minutes == 20 {
            self.exercises = ["Asymmetric pull ups","Negative pull ups","Prone chin-ups","Neutral pull-ups","Supine pull-ups","Leg raises","Dragon flag"]
        }
        else if level == "Medium" && minutes == 30 {
            self.exercises = ["Hollow body hold","Knee raises with hold","Pull over","Hold tuck front lever","L sit raises","Explosive squats","Bupees","Decline push-ups","Bulgarian squat","Airborne squat",]
        }
        else if level == "Medium" && minutes == 40 {
            
        }
        else if level == "Medium" && minutes == 50 {
            
        }
        else if level == "Hard" && minutes == 20 {
            self.exercises = ["Pseudo push-ups","Explosive bulgarian squat","Pistol squat","Hold advance planche","Muscle up","Press to hanstand","Tucked planche push-ups"]
        }
        else if level == "Hard" && minutes == 30 {
            self.exercises = ["Frog to hanstand","Free hanstand push-ups","Hold advance planche","Muscle up","Press to hanstand","Dips","Korean dips","Headbangers","Leg raises","Skin the cat raises"]
        }
        else if level == "Hard" && minutes == 40 {
            self.exercises = ["Diamond push-ups","Back lever pull-ups","Pseudo push-ups","Explosive bulgarian squat","Pistol squat","Front lever raises","Frog to hanstand","Free hanstand push-ups","Dips","Korean dips","Headbangers","Leg raises","Skin the cat raises"]
        }
        else {
            self.exercises = ["Diamond push-ups","Back lever pull-ups","Pseudo push-ups","Explosive bulgarian squat","Pistol squat","Front lever raises","Frog to hanstand","Free hanstand push-ups","Hold advance planche","Muscle up","Press to hanstand","Tucked planche push-ups","Dips","Korean dips","Headbangers","Leg raises","Skin the cat raises"]
        }
    }
}

struct StartWorkout_Previews: PreviewProvider {
    static var previews: some View {
        StartWorkout(level:"", minutes:0)
    }
}

