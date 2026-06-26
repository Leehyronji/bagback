# Bag-Back Lucky Draw Website

## 프로젝트 개요

Bag-Back Lucky Draw Website는 전시 관람객을 대상으로 제작한 인스타그램 팔로우 연계형 럭키드로우 웹사이트이다.

관람객은 전시장 QR코드를 통해 사이트에 접속하고, Bag-Back Universe 인스타그램 계정을 팔로우한 뒤 바로 룰렛 이벤트에 참여할 수 있다.

---

## v11 최종 워크플로우

1. QR코드로 사이트 접속
2. `@bagbackuniverse_official` 팔로우
3. 사이트에서 `팔로우 완료` 버튼 클릭
4. 룰렛 참여
5. 당첨 결과 확인
6. 직원에게 결과 화면 제시 후 선물 수령

---

## v11 수정사항

- 직원 확인 단계 제거
- 직원 인증코드 입력 제거
- 인스타그램 아이디 입력 제거
- 코챌랩 인스타그램 팔로우 버튼 제거
- 참여자 / 링크 기록 관리자 페이지 제거
- 관람자 흐름 단순화
- 기존 선물 구성 및 관리자 기능 유지
- `index.html` 단독 실행 가능

---

## 인스타그램 팔로우 대상

- `@bagbackuniverse_official`

---

## 파일 구성

```text
bagback_lucky_draw_v11_simple_final
├─ index.html
├─ README.md
└─ assets
   ├─ LUNGYI_LUNGYI.png
   ├─ DDAENG.png
   ├─ CHICHI.png
   └─ wheel_center.png
```

`index.html`은 이미지가 내부에 포함된 단일 HTML 방식이므로 사이트 실행에는 `index.html` 하나만 있어도 작동한다.  
`assets` 폴더는 제출 및 정리용으로 함께 포함하였다.

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

## 관리자 기능

같은 사이트 안에서 직원 관리자 화면에 접속할 수 있다.

관리자 화면에서는 다음 기능을 사용할 수 있다.

- 당첨 / 수령 내역 확인
- 수령 완료 처리
- 남은 선물 현황 확인
- 세트 및 확률 관리
- 이벤트 상태 관리
- 기록 JSON 다운로드

---

## GitHub Pages 업로드 방법

기존 GitHub Pages URL과 기존 QR코드를 그대로 사용하려면, 기존 repository 이름을 유지하고 루트 경로의 파일만 교체하면 된다.

1. GitHub repository `bagback`에 접속한다.
2. 기존 파일을 삭제한다.
3. v11 폴더 안의 파일을 repository 루트에 업로드한다.

권장 업로드 구조:

```text
Repository root
├─ index.html
├─ README.md
└─ assets
```

사이트 실행만 필요하면 `index.html` 하나만 업로드해도 된다.

---

## 기존 URL / QR 유지

기존 repository 이름이 `bagback`이면 기존 URL은 그대로 유지된다.

```text
https://leehyronji.github.io/bagback/
```

기존 QR코드가 위 주소로 연결되어 있다면 QR코드는 새로 만들 필요가 없다.  
GitHub repository의 `index.html`만 v11로 교체하면 기존 QR로 접속해도 최신 사이트가 열린다.

---

## 현재 버전의 한계

현재 사이트는 정적 HTML 기반이다.  
같은 브라우저 안에서는 당첨 기록과 재고가 저장되지만, 여러 관람객이 각자의 휴대폰으로 접속하는 실제 운영 환경에서는 각 기기의 저장소가 분리된다.

정식 운영에서 모든 기기의 기록과 재고를 중앙에서 관리하려면 Supabase 또는 Firebase 같은 데이터베이스 연동이 필요하다.
