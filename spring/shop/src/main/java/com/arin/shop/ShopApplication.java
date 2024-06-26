package com.arin.shop;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
public class ShopApplication {
	String 함수이름(){
		return "IJ";
	}
	public static void main(String[] args) {
		SpringApplication.run(ShopApplication.class, args);
		Test test = new Test();
		test.name = "ssss";

		test.hello();
		System.out.println(test.name);
		final String lover = "IJ";
		int age = 20;
		final int loverCount = 1;
		System.out.println(loverCount);

		if(3 > 1){
			// 실행할 코드
		}
		for(int i = 0; i < 3; i++){
			// 실행할 코드
		}

		//함수이름();
		var test2 = new Friend("HJ");
		System.out.println(test2.name);
	}

}

class Test {
	String name = "kim";
	void hello(){
		System.out.println("안녕");
	}
}

class Friend{
	String name = "IJ";
	int age = 30;
	Friend(String 구멍){
		this.name = 구멍;
	}
}
