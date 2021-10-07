//
//  TaskModel.swift
//  App06-TODO-Firebase
//
//  Created by Alumno on 07/10/21.
//

import SwiftUI
import FirebaseFirestore
class TaskModel: ObservableObject {
    @Published var tasks = [Task]()
    init() {
        fetchData()
    }
    private let db = Firestore.firestore()
    func fetchData() {
        db.collection("Tasks").order(by: "dueDate").addSnapshotListener{(querySnapshot,error) in
            guard let documents = querySnapshot?.documents else{
                print("No dOcuments")
                return
            }
            self.tasks = documents.compactMap{querySnapshot -> Task? in
                return try? querySnapshot.data(as:Task.self)
            }
            
        }
    }
//    func updateData(task:task) {
//        if let taskID = tasl.id{
//            do{
//                try db.collection("Tasks").document(taskID).setData(from: task)
//            }
//        }
//    }
}
