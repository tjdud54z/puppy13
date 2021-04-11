# M.A.T(My Animal Tip)

## 🤝 프로젝트 설명

- 애완동물은 사람들의 일상속에서 한 자리를 맡고 있습니다. 하지만 여러 동물의 팁은 한번에 찾아보기는 어렵습니다. 그러한 사람들을 
  위해서 여러 애완동물들을 키우는 사람들끼리의 나만의 팁들을 공유하고, 자랑하는 애완동물 팁게시판을 이용할 수 있는 프로젝트입니다.

## :man_astronaut: 프로젝트 제작자

* [정서영] - 회원가입, 로그인/로그아웃, 마이페이지, 메인게시판/, 관리자페이지

## ⭐️ 기술 스택

- Front-End
  - HTML, CSS, JavaScript
  - JQuery
  - BootStrap
- Back-End
  - Java
  - Mybatis
- WebServer
  - Apache-Tomcat 9.0
- DataBase
  - Oracle 11g
- Framework
  - Spring

## 설치 프로그램 및 셋팅

- 작업 툴 : Eclipse (JavaEE IDE로 설치)(단, Java SE 8 version이 깔려있어야 설치가 진행 됩니다.)
- 서버 : Apache Tomcat® server 9.0 (zip파일로 다운로드하여 셋팅하는 것을 추천드립니다.)
- DB : Oracle 11g and Oracle 11g Developers (단, Developers는 선택 사항입니다.)
- 환경 변수(path) : 환경변수는 [Java](https://macchiato.tistory.com/9)와 [오라클](https://request-response.tistory.com/6)을 설정해주세요.
- porm.xml 설정 : 제 파일에 올라가 있는 porm.xml파일을 사용해 주세요.
- *** context.xml 설정 : 제 파일에 올라가 있는 *** context.xml파일을 사용해 주세요. (ex.servlet-context.xml, root-context.xml 등)
- project Facets : Java 1.8로 셋팅 / Dynamic Web Module 4.0

- [제목](https://github.com/tjdud54z/puppy13/blob/main/src/main/resources/mybatis/User13Mapper.xml)

## Database

- OracleDB를 MyBatis로 매핑해서 사용합니다.
- views에 Database.txt파일을 참고해 주세요.

## :pencil: 코드 및 설명
* 본 코드는 Java 언어를 사용하여 MVC(Model View Controlle)구조인 Spring으로 진행된 프로젝트입니다.
* 스크린샷 포함되어 있는 텍스트를 누루면, 구현 화면을 보실 수 있습니다.

### <-- 회원가입 -->
<details close>
  <summary> 
    <b>회원 가입 스크린샷</b><br>
  </summary>
  
![puppy1](https://user-images.githubusercontent.com/81797197/114301078-0c14ea00-9afe-11eb-9c0d-449cfbeabb0b.jpg)<br>
![puppy2](https://user-images.githubusercontent.com/81797197/114301099-28188b80-9afe-11eb-9792-7ddda0cdb911.jpg)<br>
![puppy3](https://user-images.githubusercontent.com/81797197/114301105-2f3f9980-9afe-11eb-9657-8161f0a54a46.jpg)<br><br>

</details>

§ 회원가입 전 2개의 약관동의를 해야지만 회원가입 페이지로 넘어갈 수 있도록 Javascript를 사용했습니다.<br>
§ 빈칸이 있을 경우 Javascript를 사용하여 빈칸 제일 1번째로 커서가 이동시키게 하였습니다.<br>
§ ID와 nickname 입력시 Ajax를 사용하여 DB의 데이터와 데이터의 존재여부를 확인하여 alert메세지로 중복인지 사용가능한지 알 수 있습니다.<br>
§ 비밀번호와 비밀번호재확인이 틀릴 경우 alert메세지로 확인할 수 있게 하였습니다.<br>
§ 부분 마다 javascript를 사용하여 유효성 검사를 하였습니다.<br>

### <-- 로그인/로그아웃 -->
<details close>
  <summary> 
    <b>로그인/로그아웃 스크린샷</b><br>
  </summary>
  
![puppy4](https://user-images.githubusercontent.com/81797197/114301867-87c46600-9b01-11eb-8c5d-310597d09790.jpg)<br>
![puppy7](https://user-images.githubusercontent.com/81797197/114301880-96128200-9b01-11eb-8f5d-355f74ac267b.jpg)<br>
![puppy5](https://user-images.githubusercontent.com/81797197/114301869-8a26c000-9b01-11eb-8c96-04fea256aae2.jpg)<br>
![puppy6](https://user-images.githubusercontent.com/81797197/114301873-8dba4700-9b01-11eb-9ab9-b1e18ba8731f.jpg)<br><br>

</details>

§ 로그인 정보를 DB에서 가지고 와서 비교후에 ID와 PW가 같을 경우만 로그인이 가능합니다. 계정이 틀릴시에 아래에 빨간색으로 메시지를 표시합니다.<br>
§ 로그인 성공 시 session에 저장되며, session 정보를 가지고와서 간단한 정보를 우측상단에 표시해 주고 로그아웃 버튼이 활성화 됩니다. session 정보가 없을 경우 로그인 버튼이 활성화 됩니다.<br>
§ 로그아웃 시 session을 없앤 뒤에, 로그인 화면에 로그아웃 메시지가 표시됩니다.<br>

### <-- 마이페이지 -->
<details close>
  <summary> 
    <b>마이페이지 스크린샷</b><br>
  </summary>
  
![puppy8](https://user-images.githubusercontent.com/81797197/114302329-901da080-9b03-11eb-9e7e-f69afece8f2a.jpg)<br>
![puppy9](https://user-images.githubusercontent.com/81797197/114302331-914ecd80-9b03-11eb-9e37-1c436e0b5af4.jpg)<br>
![puppy10](https://user-images.githubusercontent.com/81797197/114302332-91e76400-9b03-11eb-94fb-9e2ccdb00d2f.jpg)<br><br>

</details>

§ 마이페이지 버튼은 session을 있어야만 활성화 되도록 Javascript를 사용했습니다.<br>
§ 정보 수정에서 회원가입과 같이 Ajax와 JavaScript를 사용해서 유효성 검사를 진행했습니다.<br>
§ 회원 탈퇴는 DB의 정보의 ID와 PW가 같아야만 회원 퇼퇴가 가능합니다. 회원 탈퇴 시 DB에 탈퇴여부 컬럼에 'YES' 변경 됩니다. (완전삭제는 관리자가 진행합니다.)<br>
§ 탈퇴 된 회원은 로그인 할 수 없도록 javascript를 사용했습니다.<br>

### <-- 메인게시판/댓글 -->
<details close>
  <summary> 
    <b>메인게시판/댓글 스크린샷</b><br>
  </summary>
  
![puppy11](https://user-images.githubusercontent.com/81797197/114302720-36b67100-9b05-11eb-8a88-68e5985cebd8.jpg)<br>
![puppy12](https://user-images.githubusercontent.com/81797197/114302722-374f0780-9b05-11eb-8a28-a2fc980bb1e8.jpg)<br>
![puppy13](https://user-images.githubusercontent.com/81797197/114302724-37e79e00-9b05-11eb-9709-b93a6fb834b9.jpg)<br><br>

</details>

§ 게시판/댓글의 모든 작성, 삭제, 수정 버튼은 session의 정보를 비교하여 jstl태그를 사용해 활성화/비활성화를 했습니다. (session의 정보가 없으면 게시판 및 댓글 보기만 가능합니다.)<br>
§ DB에 게시판 정보를 가지고 와서 list로 게시판 정보를 가지고 왔습니다. (게시물과 같이 댓글도 볼 수 있도록 구현했습니다.)<br>
§ 게시물 작성 시 빈칸은 javaScript로 유효성을 검사하고, 파일도 같이 추가 될 수 있도록 구현하였습니다.<br>
§ 게시물 상세보기에서 작성자가 올려놓은 파일을 다운로드 할 수 있습니다.<br>
§ 게시물/댓글 모두 페이징을 구현하였습니다.<br>

### <-- 관리자페이지 -->
<details close>
  <summary> 
    <b>관리자페이지 스크린샷</b><br>
  </summary>
  
![puppy14](https://user-images.githubusercontent.com/81797197/114303257-32d81e00-9b08-11eb-9103-7eb4a8945913.jpg)<br>
![puppy15](https://user-images.githubusercontent.com/81797197/114303260-34094b00-9b08-11eb-9e28-9830c586b200.jpg)<br>
![puppy16](https://user-images.githubusercontent.com/81797197/114303262-34094b00-9b08-11eb-90b9-3338c70896dd.jpg)<br><br>

</details>

## 🐤 감사의 말

* 현 프로젝트는 작성자의 대학교 때 미숙한 상태의 프로젝트 입니다. 참고용으로만 사용해주세요.
* 본 코드는 JSP, DAO, DTO로 구성되어 있습니다.
* 여러가지 코드별로 나눠서 작성을 했다면 괜찮았을 텐데 대학교 시절 실력이 부족하여, 코드가 너무 지저분 함이 있습니다.
* 이 후 좀 더 체계적이고 완성도가 높은 프로젝트를 여러분에게 공유하겠습니다. 감사합니다.
