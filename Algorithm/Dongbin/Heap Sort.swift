//
//  Heap Sort.swift
//  Algorithm
//
//  Created by Sang hun Lee on 2022/04/25.
//

import Foundation

// heap-tree구조의 개념 정립 필요
// 퀵 정렬과 동일하게 평균 O(N*logN)의 시간 복잡도
// 이진트리: 2개의 자식 노드를 가지는 노트 트리 구조
// 힙: 최소값, 최대값을 빠르게 찾아내기 위한 완전 이진트리를 기반으로 하는 트리
// 최대힙: 부모 노드가 자식노트보다 큰 힙
// 힙 생성 알고리즘: 하나의 노드에 대해서 힙이 붕괴가 되어 있다면 자식 노드 중 큰 자식과 자기 자신을 바꾸어주는 알고리즘 - 상향 / 하향
// 정렬: 힙에서 가장 위에 있는 값을 배열의 가장 뒤로 보내고, 힙 생성 알고리즘을 반복 수행
// 모든 노드: N * 힙의 계층: logN * ( 1/2 )

let input = [7,6,5,8,3,5,9,1,6]

func heapSort(_ input: [Int]) -> [Int] {
    var heap = input
    let number = input.count
    // 먼저 전체 트리 구조를 최대힙 구조로 변경
    for i in 1..<number {
        var c = i
        repeat {
            // 특정 원소의 부모
            let root = (c - 1) / 2
            // 부모의 값보다 자식의 값이 큰 경우 위치 바꾸기
            if heap[root] < heap[c] {
                heap.swapAt(root, c)
            }
            c = root
        } while c != 0
    }

    // 크기를 줄여가며 반복적으로 힙을 구성
    for i in stride(from: number - 1, through: 0, by: -1) {
        // root 노트와 가장 마지막에 있는 노드를 바꿔 줌, 가장 큰 값을 맨 뒤로 보냄
        heap.swapAt(0, i)
        // 다시 힙 구조 만들기
        var root = 0
        var c = 1
        repeat {
            // 루트의 자식
            c = 2 * root + 1
            // 자식 중에 더 큰 값 찾기
            if (c < i - 1 && heap[c] < heap[c + 1]) {
                c += 1
            }
            // 루트보다 자식이 더 크다면 교환
            if c < i && heap[root] < heap[c] {
                heap.swapAt(root, c)
            }
            root = c
        } while c < i
    }
    return heap
}

print(heapSort(input))


