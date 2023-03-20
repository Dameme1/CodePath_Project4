//
//  Task.swift
//  Project4
//
//  Created by Tameem Ahmed on 3/14/23.
//
import UIKit
import CoreLocation

class Task {
    let title: String
    let description: String
    var image: UIImage?
    var imageLocation: CLLocation?
    var isComplete: Bool {
        image != nil
    }

    init(title: String, description: String) {
        self.title = title
        self.description = description
    }

    func set(_ image: UIImage, with location: CLLocation) {
        self.image = image
        self.imageLocation = location
    }
}

extension Task {
    static var mockedTasks: [Task] {
        return [
            Task(title: "Your favorite local restaurant",
                 description: "Where do you like to eat most?"),
            Task(title: "Your favorite local cafe",
                 description: "Bring treats back home to your family"),
            Task(title: "Your go-to brunch place",
                 description: "Take your wife to some place nice"),
            Task(title: "Your favorite hiking spot",
                 description: "Where do you go to be one with nature?")
        ]
    }
}

