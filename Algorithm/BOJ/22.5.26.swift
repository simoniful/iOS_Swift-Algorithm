//
//  22.5.26.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/05/26.
//

import Foundation

// 1004번, 어린 왕자
let totalTestCase = Int(readLine()!)!

for _ in 0..<totalTestCase {
    var count: Int = 0
    let coordinates = readLine()!.split(separator: " ").map{ Int($0)! }

    let x1 = coordinates[0]
    let y1 = coordinates[1]
    let x2 = coordinates[2]
    let y2 = coordinates[3]

    let planetarySystemsCount = Int(readLine()!)!
    
    for _ in 0..<planetarySystemsCount {
        let planetarySystem = readLine()!.split(separator: " ").map{ Int($0)! }
        let cx = planetarySystem[0]
        let cy = planetarySystem[1]
        let r = planetarySystem[2]
        var d: Int = 0
        var containsCoord1: Bool = false
        var containsCoord2: Bool = false
        
        d = (cx - x1) * (cx - x1) + (cy - y1) * (cy - y1)
        containsCoord1 = d > r * r ? false : true
        d = (cx - x2) * (cx - x2) + (cy - y2) * (cy - y2)
        containsCoord2 = d > r * r ? false : true
        
        if containsCoord1 != containsCoord2 { count += 1 }
    }
    print(count)
}

// 1358번, 하키

let whxyp = readLine()!.split(separator: " ").map{ Int($0)! }

let w = whxyp[0]
let h = whxyp[1]
let x = whxyp[2]
let y = whxyp[3]
let p = whxyp[4]
let r = h / 2

var count = 0

for _ in 0..<p {
    let player = readLine()!.split(separator: " ").map{ Int($0)! }
    let xp = player[0]
    let yp = player[1]
    
    if ((xp - x)*(xp - x) + (yp - (y + r))*(yp - (y + r)) <= r * r && xp < x) {
        count += 1
    } else if x <= xp && xp <= x + w && y <= yp && yp <= y + h {
        count += 1
    } else if (xp - x - w) * (xp - x - w) + (yp - y - r) * (yp - y - r) <= r * r && x + w < xp {
        count += 1
    }
}

print(count)
           
// 3034번, 앵그리 창영

let nwh = readLine()!.split(separator: " ").map{ Int($0)! }

let n = nwh[0]
let wh = [nwh[1], nwh[2]]
           
for _ in 0..<n {
    let temper = Int(readLine()!)!
    if temper * temper <= wh.min()! * wh.min()! + wh.max()! * wh.max()! {
        print("DA")
    } else {
        print("NE")
    }
}
