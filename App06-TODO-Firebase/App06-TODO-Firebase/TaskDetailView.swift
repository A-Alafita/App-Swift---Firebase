//
//  TaskDetailView.swift
//  App06-TODO-Firebase
//
//  Created by Alumno on 07/10/21.
//

import SwiftUI

struct TaskDetailView: View {
    @StateObject var taskModel:TaskModel
    var task:Task
    var body: some View {
        VStack{
            Spacer()
            Button{
                addTask()
                presentationMode.wrappedValue.dismiss()
            }label: {
                image(systemName: "plus.circle.fill")
                    .font(.largeTitle)
                    .foregroundColor(.green)
            }
        }
    }
    func addTask(){
        
    }
}

struct TaskDetailView_Previews: PreviewProvider {
    static var previews: some View {
        TaskDetailView()
    }
}
