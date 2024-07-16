# 참고

### 시작하기전에
github 아이디 알려주면 repository 초대할게요

### 개발환경

* <a href="https://www.eclipse.org/downloads/">이클립스</a> or <a href="https://spring.io/tools">STS</a>
* <a href="https://www.openlogic.com/openjdk-downloads?field_java_parent_version_target_id=416&field_operating_system_target_id=All&field_architecture_target_id=All&field_java_package_target_id=All">openjdk8</a>
or <a href="https://www.openlogic.com/openjdk-downloads?field_java_parent_version_target_id=406&field_operating_system_target_id=All&field_architecture_target_id=All&field_java_package_target_id=All">openjdk11</a>
* <a href="https://tomcat.apache.org/download-90.cgi">tomcat 9</a>


### 순서 
1. github 회원가입
2. github settings -> Developer settings 클릭
3. Personal access tokens -> Tokens(classic) 클릭
4. 적당히 체크 후 토큰키 생성(※해당 토큰값이 이클립스 git 연동에 사용될 패스워드임. 생성시에만 볼 수 있으니 분실되지 않도록 주의)
5. github 계정명 혹은 github 이메일주소 공유
6. 깃헙 저장소 액세스 수락
7. 소스 clone 후 작업  

### jdk 관련 이슈
openjdk8버전 같은 경우 인증서 문제로 maven install이 되지 않는 이슈가 있음

해당 경우는 %JAVA_HOME%/jre/lib/security/cacerts 파일을 교체해줘야함.

<a href="https://github.com/jschoiSit21c/sit21c/blob/main/cacerts">cacerts 파일 다운로드</a>