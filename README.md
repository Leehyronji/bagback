# Bag-Back Lucky Draw Website

## 프로젝트 개요

Bag-Back Lucky Draw Website는 전시 관람객을 대상으로 제작한 인스타그램 팔로우 연계형 럭키드로우 웹사이트이다.

관람객은 전시장 QR코드를 통해 사이트에 접속하고, 지정된 인스타그램 계정을 팔로우한 뒤 직원 확인을 거쳐 룰렛 이벤트에 참여할 수 있다.  
전시 현장에서 Bag-Back 세계관과 캐릭터 굿즈를 자연스럽게 경험할 수 있도록 관람자 화면과 직원 관리자 화면을 하나의 웹사이트 안에 함께 구성하였다.

---

## 배포 주소

GitHub Pages를 통해 배포한다.

기존 repository 이름을 유지하고 루트 경로에 `index.html`을 업로드하면 기존 URL과 기존 QR코드를 그대로 사용할 수 있다.

예시:

```text
https://leehyronji.github.io/bagback/
```

---

## v10 최종 파일 구성

```text
bagback_lucky_draw_v10_final
├─ index.html
├─ README.md
└─ assets
   ├─ LUNGYI_LUNGYI.png
   ├─ DDAENG.png
   ├─ CHICHI.png
   └─ wheel_center.png
```

### 중요

`index.html`은 단일 HTML 방식으로 제작되어 있으며, 이미지 데이터가 HTML 내부에 포함되어 있다.  
따라서 실제 사이트 실행에는 `index.html` 하나만 있어도 작동한다.

다만 제출 및 파일 정리를 위해 `assets` 폴더도 함께 포함하였다.

---

## 인스타그램 팔로우 대상

럭키드로우 참여 전 관람객은 아래 두 계정을 팔로우해야 한다.

- `@bagbackuniverse_official`
- `@cochelab.official`

사이트 안에는 두 계정으로 이동하는 버튼이 있으며, 관람자가 각 링크를 눌렀는지 확인할 수 있는 기록 기능을 넣었다.

---

## 관람자 참여 흐름

1. QR코드로 사이트 접속
2. 인스타그램 계정 2개 팔로우
3. 사이트로 돌아와 인스타그램 아이디 입력
4. 직원에게 팔로우 화면 확인 요청
5. 직원이 관람자 화면에 인증코드 입력
6. 룰렛 진행
7. 당첨 결과 확인
8. 직원에게 결과 화면 제시 후 선물 수령

---

## 직원 관리자 기능

같은 사이트 안에서 직원 관리자 화면에 접속할 수 있다.

직원 관리자 화면에서는 다음 기능을 사용할 수 있다.

- 당첨 / 수령 내역 확인
- 수령 완료 처리
- 남은 선물 현황 확인
- 참여자 / 링크 클릭 기록 확인
- 세트 및 확률 관리
- 이벤트 상태 관리

모바일에서도 확인하기 쉽도록 관리자 화면 일부는 카드형 목록으로 구성하였다.

---

## 캐릭터 구성

메인 화면에는 Bag-Back의 주요 캐릭터 3명을 배치하였다.

1. LUNGYI_LUNGYI
2. DDAENG
3. CHICHI

룰렛 중앙에는 세 캐릭터가 함께 있는 이미지를 원형으로 배치하였다.

---

## 선물 구성

팀 보관분을 제외하고 실제 럭키드로우 운영에 사용하는 수량은 아래와 같이 설정하였다.

- DDAENG 스티커: 97개
- CHICHI 스티커: 97개
- LUNGYI_LUNGYI 스티커: 97개
- 키링: 497개
- 코챌랩 립글로즈: 50개

예상 방문자 600명 기준으로 꽝 없이 운영할 수 있도록 아래처럼 세트 수량을 구성하였다.

| 선물 항목 | 수량 |
|---|---:|
| DDAENG 스티커+키링 세트 | 80 |
| CHICHI 스티커+키링 세트 | 79 |
| LUNGYI_LUNGYI 스티커+키링 세트 | 79 |
| DDAENG 스티커 | 17 |
| CHICHI 스티커 | 18 |
| LUNGYI_LUNGYI 스티커 | 18 |
| Bag-Back 키링 | 259 |
| Coché Lab 립글로즈 | 50 |

총 당첨 수량: 600개

---

## GitHub Pages 업로드 방법

기존 GitHub Pages URL과 기존 QR코드를 그대로 사용하려면, 기존 repository를 삭제하지 말고 repository 안의 파일만 정리하면 된다.

### 1. 기존 파일 삭제

GitHub repository의 루트에 있는 기존 파일들을 삭제한다.

삭제 대상 예시:

```text
index.html
README.txt
README.md
supabase_schema_example.sql
assets
```

기존 파일을 모두 삭제해도 repository 이름이 그대로라면 URL은 유지된다.

---

### 2. v10 파일 업로드

이 폴더 안의 파일을 GitHub repository 루트에 업로드한다.

업로드 권장 구조:

```text
Repository root
├─ index.html
├─ README.md
└─ assets
```

사이트 실행만 필요하면 `index.html` 하나만 업로드해도 된다.  
하지만 제출용으로는 `README.md`와 `assets` 폴더도 함께 업로드하는 것을 권장한다.

---

### 3. Commit changes

파일 업로드 후 아래 버튼을 눌러 반영한다.

```text
Commit changes
```

---

### 4. GitHub Pages 반영 대기

보통 1~3분 정도 기다리면 기존 URL에 최신 버전이 반영된다.

```text
https://leehyronji.github.io/bagback/
```

---

## QR코드 사용 방식

기존 QR코드가 아래 주소로 연결되어 있다면 QR코드는 새로 만들 필요가 없다.

```text
https://leehyronji.github.io/bagback/
```

GitHub repository의 `index.html`만 v10으로 바꾸면, 기존 URL과 기존 QR 모두 최신 사이트로 연결된다.

---

## 모바일 확인 시 주의사항

모바일 브라우저가 이전 버전의 파일을 저장하고 있을 수 있다.  
컴퓨터에서는 바뀌었는데 모바일에서만 예전 화면이 보이면 브라우저 캐시 문제일 가능성이 높다.

확인 방법:

1. Safari 또는 Chrome의 기존 탭을 닫는다.
2. 다시 QR코드로 접속한다.
3. 그래도 예전 화면이면 브라우저 방문 기록 및 웹사이트 데이터를 삭제한 뒤 다시 접속한다.

---

## 현재 버전의 한계

현재 사이트는 정적 HTML 기반이다.  
같은 브라우저 안에서는 참여 기록과 당첨 기록이 저장되지만, 여러 관람자가 각자의 휴대폰으로 접속하는 실제 운영 환경에서는 각 기기의 저장소가 분리된다.

정식 운영에서 모든 기기의 기록과 재고를 중앙에서 관리하려면 Supabase 또는 Firebase 같은 데이터베이스 연동이 필요하다.

---

## 향후 개선 방향

- Supabase 또는 Firebase 연동
- 전체 관람자 중복 참여 방지
- 실시간 재고 동기화
- 관리자 페이지 실시간 업데이트
- 당첨 기록 CSV 다운로드
- QR 티켓 기반 1회 참여 기능
- 전시 브랜딩 애니메이션 추가
