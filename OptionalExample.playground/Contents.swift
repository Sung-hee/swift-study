import UIKit

var carName: String? = "SelTos"

var favoriteMovieStart: String? = nil
let num = Int("10")

// 고급 기능 4가지

// Forced unwrapping > 억지로 박스 까기
// Optional binding(if let) -> 부드럽게 박스 까기 1
// Optional binding(guard) ->  부드럽게 박스 까기 2
// Nil coalescing -> 박스를 까봤더니 값이 없으면 디폴트로 값을 주자

//print(carName!)

carName = nil
if let unwarappedCarName = carName {
    print(unwarappedCarName)
}
else {
    print("CarName 없다")
}

func printParsedInt(from: String) {
    if let parsedInt = Int(from) {
        print(parsedInt)
    }
    else {
        print("Int로 변환 안됨")
    }
}

printParsedInt(from: "100a")

func printParsedIntGuard(from: String) {
    guard let parsedInt = Int(from) else {
        print("Int로 변환 안됨")
        return
    }
    print(parsedInt)
}

printParsedIntGuard(from: "100")

let myCarName: String = carName ?? "seltos"

let myFavoriteFood: String? = "양고기"

if let foodName = myFavoriteFood {
    print(foodName)
}
else {
    print("좋아하는 음식 없음")
}

func printNickName(name: String?) {
    guard let nickName = name else {
        print("닉네임을 만들어보자")
        return
    }
    
    print(nickName)
}

printNickName(name: "hees")
