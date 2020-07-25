import UIKit

/** 가장 가까운 편의점 찾기 **/

// 거리 구하는 함수
func distance(current: Location, target: Location) -> Double {
    let distanceX = Double(target.x - current.x)
    let distanceY = Double(target.y - current.y)
    let distance = sqrt(distanceX * distanceX + distanceY * distanceY)
    
    return distance
}

struct Location {
    let x: Int
    let y: Int
}

struct Store {
    let loc: Location
    let name: String
    let deliveryRange = 2.0
    
    func isDeliverable(userLoc: Location) -> Bool {
        let distanceToStore = distance(current: userLoc, target: loc)
        
        return distanceToStore < deliveryRange
    }
}

// 현재 스토어 위치들
//let store1 = (x: 3, y: 5, name: "gs")
let store1 = Store(loc: Location(x: 3, y: 5), name: "gs")

//let store2 = (x: 4, y: 6, name: "saven")
let store2 = Store(loc: Location(x:4, y: 6), name: "saven")

//let store3 = (x: 5, y: 7, name: "cu")
let store3 = Store(loc: Location(x:1, y:7), name: "cu")

// 가장 가까운 스토어 구해서 프린트 해주는 함수
func printclosestStore(currentLocation: Location, stores: [Store]) {
    var closestStoreName = ""
    var closestStoreDistance = Double.infinity
    var isDeliverable = false
    
    for store in stores {
        let distanceToStore = distance(current: currentLocation, target: store.loc)
        closestStoreDistance = min(distanceToStore, closestStoreDistance)
        
        if closestStoreDistance == distanceToStore {
            closestStoreName = store.name
            isDeliverable = store.isDeliverable(userLoc: currentLocation)
        }
    }
    
    print("closeset store: \(closestStoreName), is Deliverable: \(isDeliverable)")
}

// Stores Array 세팅
let myLocation = Location(x: 2, y: 5)
let stores = [store1, store2, store3]

printclosestStore(currentLocation: myLocation, stores: stores)


/**
도전과제
 1. 강의이름, 강사 이름, 학생수를 가지는 구조체 만들기
 2. 강의 배열과 강사이름을 받아서, 해당 강사의 강의 이름 출력
 3. 강의 3개 만들고 강사 이름으로 강의 찾기
**/

struct Lecture: CustomStringConvertible {
    var description: String {
        return "Title: \(name), Instructor: \(instructor)"
    }
    let name: String
    let instructor: String
    let numberOfStudent: Int
}

func printLectureName(from instructor: String, lectures: [Lecture]) {
//    var lectureName = ""
//
//    for lecture in lectures {
//        if instructor == lecture.instructor {
//            lectureName = lecture.name
//        }
//    }
    
    let lectureName = lectures.first {
        (lec) -> Bool in return lec.instructor == instructor
//        $0.instructor == instructor

    }?.name ?? ""
    
    print("LectureName: \(lectureName)")
}

let lec1 = Lecture(name: "iOS Basic", instructor: "Jason", numberOfStudent: 5)
let lec2 = Lecture(name: "iOS Advanced", instructor: "Jack", numberOfStudent: 5)
let lec3 = Lecture(name: "iOS Pro", instructor: "Jim", numberOfStudent: 5)
let lectures = [lec1, lec2, lec3]

printLectureName(from: "Jack", lectures: lectures)
print(lec1)
