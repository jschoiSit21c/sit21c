# 참고

### 시작하기전에
github 아이디 알려주면 repository 초대할게요

### 개발환경

* <a href="https://www.eclipse.org/downloads/">이클립스</a> or <a href="https://spring.io/tools">STS</a>
* <a href="https://www.openlogic.com/openjdk-downloads?field_java_parent_version_target_id=416&field_operating_system_target_id=All&field_architecture_target_id=All&field_java_package_target_id=All">openjdk8</a>
or <a href="https://www.openlogic.com/openjdk-downloads?field_java_parent_version_target_id=406&field_operating_system_target_id=All&field_architecture_target_id=All&field_java_package_target_id=All">openjdk11</a>
* <a href="https://tomcat.apache.org/download-90.cgi">tomcat 9</a>
* <a href="https://dbeaver.io/download/">DB Tool(DBeaver)</a>


### 순서 
1. github 회원가입
2. github settings -> Developer settings 클릭
3. Personal access tokens -> Tokens(classic) 클릭
4. 적당히 체크 후 토큰키 생성(※해당 토큰값이 이클립스 git 연동에 사용될 패스워드임. 생성시에만 볼 수 있으니 분실되지 않도록 주의)
5. 소스 clone 후 작업  

### jdk 관련 이슈
openjdk8버전 같은 경우 인증서 문제로 maven install이 되지 않는 이슈가 있음

해당 경우는 %JAVA_HOME%/jre/lib/security/cacerts 파일을 교체해줘야함.

<a href="https://github.com/jschoiSit21c/sit21c/blob/main/cacerts">cacerts 파일 다운로드</a>

### 콘솔에 DB 로그 깨지는 경우
1. Run -> Run Configurations... 클릭
2. 사용중인 서버 선택
3. Common 클릭 후 Encoding 변경

### 첨부파일 로컬 세팅
c드라이브 밑에 sit21c/files 폴더 만들어줘야 동작함