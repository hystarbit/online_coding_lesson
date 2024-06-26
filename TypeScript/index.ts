// let 이름 :string = 'kim';
// 이름 = 123;
//let 이름 :string[] =['kim','park'];
//let 이름 :string[] =[123,'park'];
// let 이름 :{name? : string} = {name : 'kim'};
//let 이름 :string | number = 123;

//type 내타입 = string | number;

// type Name = string | number;

// let 이름 :Name = 'kim';

// function 함수(x: number) : number{
//     return x * 2
// }

//함수('123');

//type Member = [number, boolean];
//let john:Member = [];
//let john:Member = ['123', true];
//let john:Member = [123, true];

// type Member = {
//     name : string,
// };

// type Member = {
//     [key :string] : string,
// }

// let john:Member = {name : 'kim', age : '123'};

// class User {
//     name :string;
//     constructor(name: string){
//         this.name = name;
//     }
// }

//document.getElementById('user').innerHTML = "Welcome";

//let 제목 = document.getElementById('#title123');
// if (제목이 null 아니면) {
//     제목.innerHTML = '반가워요';
// }
// if (제목 != null) {
//      제목.innerHTML = '반가워요';
// }

// if (제목 instanceof Element) {
//     제목.innerHTML = '반가워요';
// }

//let 제목 = document.getElementById('#title123') as Element;

let 제목 = document.getElementById('#title123');
if (제목?.innerHTML != undefined) {
    제목.innerHTML = '반가워요';
}

let 링크 = document.querySelector('.link');
// if (링크 instanceof Element){
//     링크.href = 'https://kakao.com'
// }

if (링크 instanceof HTMLAnchorElement){
    링크.href = 'https://kakao.com'
}

let 버튼 = document.querySelector('#button');
버튼?.addEventListener('click',function(){

})