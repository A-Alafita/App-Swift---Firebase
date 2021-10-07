//
//  ContentView.swift
//  App06-TODO-Firebase
//
//  Created by Alumno on 07/10/21.
//

import SwiftUI
import FirebaseFirestore
    
struct TaskListView: View {
    @StateObject var taskModel = TaskModel()
    var body: some View {
        NavigationView {
            ZStack{
            List{
                if taskModel.tasks.count > 0{
                    ForEach(taskModel.tasks){ task in
                        Text(task.task)
                    }
                    .onDelete( indexSet in
                              for index in indexSet) {
                        deleteData(task: taskModel.tasks[index])
                    }
                }else{
                    Text("No tareas")
                }
                
            }
                VStack{
                    Spacer()
                    Button(){
                        
                    }label:{
                        Image(systemName: "plis.circle.fill")
                            .font(.largeTitle)
                            .foregroundColor(.green)
                    }
                }
            }
            
            .navigationBarTitle("Tareas",displayMode : .inline)
            .listStyle(DefaultListStyle())
            .toolbar{
                ToolbarItem(placement: .principal){
                    Text("Tareas")
                        .font(.largeTitle)
                        .foregroundColor(.orange)
                }
                ToolbarItem(placement: .navigationBarTrailing)
                    EditButton()
            }
        }
        
    }
    func addTask(){
        let tast = Task(id:DocumentID(),task:"Tarea 3",caregory_id:"01",priority_id: "01",is_completed: false,date_created: Date(),due_date:Date())
        taskModel.addData(
    }
}

struct TaskListView_Previews: PreviewProvider {
    static var previews: some View {
        TaskListView()
    }
}

