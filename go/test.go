package main

import "fmt"
import "time"

func main() {
	// 1. 간단한 출력은
	//fmt.Println("hello")

	// 2. 변수 쉬움
	//var a int = 20
	//a := 20
	//fmt.Println(a)

	// 3. if else 간단함 쉬움
	// var x int = 19
	// if x < 20 {
	// 	fmt.Println("맞아요")
	// }

	// 4. array 만들기
	// 어레이 := [3]int{1, 2, 3}
	// 어레이 := []int{1, 2, 3}
	// fmt.Println(어레이)

	// 5. Map 만들기
	// 맵 := make(map[string]int)
	// 맵["age"] = 123
	// fmt.Println(맵["age"])

	// 6. pointer 가능
	// a := 10
	// b := &a
	// fmt.Println(b)

	// 7. 함수는 뭐
	// 함수1()

	// 8. 코드 동시실행 매우 쉬움
	go 함수1()
	함수2()

}

// 7. 함수는 뭐
// func 함수1() {
// 	fmt.Println("1")
// }

func 함수1() {
	for i := 1; i < 100; i++ {
		fmt.Println("안녕")
		time.Sleep(time.Second * 1)
	}
}
func 함수2() {
	for i := 1; i < 100; i++ {
		fmt.Println("메롱")
		time.Sleep(time.Second * 1)
	}
}
