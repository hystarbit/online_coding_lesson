// 4. Basig GET request
// 서버를 띄우기 위한 기본 셋팅(express 라이브러리)
const express = require('express');
const app = express();

// listen(서버띄울 포트번호, 띄운 후 실행할 코드)
// 8080 port에 서버 띄워주세요~
// 8080 port로 웹서버를 열고 잘 열리면 listening on 8080을 출력해주세요
// localhost:8080(8080포트로 들어가는 법)
app.listen(8080, function(){
    console.log('listening on 8080')
});

// 요청을 처리하는 기계 제작하기
// naver shopping
// /beauty/home으로 방문(GET요청)하면 
// (=주소창에 /beauty/home을 입력하면)
// 뷰티 상품들을 보여줌

// /pet/home으로 방문(GET요청)하면 
// 펫 상품들을 보여줌

// 누군가가 /pet으로 방문을 하면..
// pet관련된 안내문을 띄워주자
// /pet 경로로의 GET 요청을 처리하는 기계 제작하기 끝

// app.get('/pet', function(요청, 응답){
//     응답.send('펫용품 쇼핑할 수 있는 페이지입니다.');
// });

// 숙제
// 누군가가 /beauty URL로 접속하면(GET요청하면) 안내문을 띄워야함
// 뷰티용품 홈페이지임
// app.get('/beauty', function(요청,응답){
//     응답.send('뷰티용품 쇼핑할 수 있는 페이지입니다.');
// })

// 5. HTML 파일 전송하는 법 + nodemon 자동화
// 고객(Client):
// 주소창에 URL을 입력해서
// 서버에 GET 요청을 할 수 있음

// 서버(Server):
// 누군가 /pet으로 들어오면
// XX를 보내주세요~라고 코드 짬

//.get() 여러개로 경로를 많이 생성 가능
app.get('/pet', function(요청, 응답){
    응답.send('펫용품 쇼핑할 수 있는 페이지입니다.');
});

app.get('/beauty', function(요청,응답){
    응답.send('뷰티용품 쇼핑할 수 있는 페이지입니다.');
})

// 서버 실행 자동화하기
// - npm으로 설치
// 터미널에 nmp install -g nodemon 입력하기
// g: global
// - yarn으로도 설치 가능
// yarn add global nodemon

// nodemon server.js

// powershell 보안오류시
// 관리자권한으로 PowerShell 실행 후
// 1. executionpolicy dlqfur
// 2. set-executionpolicy unrestricted
// 3. y 입력

// - nodemon으로 서버 실행

// /어쩌구로 접속시 HTML 파일로 보내자.

// /하나만 쓰면 홈입니다
app.get('/', function(요청,응답){
    응답.sendFile(__dirname + '/index.html');
})
