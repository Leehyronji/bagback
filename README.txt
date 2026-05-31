# Bag-Back Lucky Draw v5

## 이번 버전 반영 내용

- 룰렛 안에 글씨를 다시 추가했습니다.
- 글씨가 깨지지 않도록 SVG 텍스트 방식으로 바꿨습니다.
- 관리자 접속을 같은 사이트 안에서 비밀번호 입력 후 들어가는 방식으로 되돌렸습니다.
- 관리자 비밀번호는 사이트 화면과 README에 노출하지 않았습니다.
- 부채는 선물 목록에서 제외된 상태를 유지했습니다.
- 캐릭터 순서는 `LUNGYI_LUNGYI → DDAENG → CHICHI`입니다.
- 인스타그램 링크 클릭 여부는 직원 확인 화면과 관리자 기록에서 확인할 수 있습니다.

## 인스타그램 팔로우 대상

- @bagbackuniverse_official
- @cochelab.official

## 파일 구조

- `index.html` : 사이트 메인 파일
- `assets/LUNGYI_LUNGYI.png`
- `assets/DDAENG.png`
- `assets/CHICHI.png`
- `supabase_schema_example.sql` : 실제 서버형 전환용 DB 예시

## QR 코드 만드는 법

QR코드는 사이트 URL이 있어야 만들 수 있습니다.

1. 이 폴더를 Netlify, Vercel, GitHub Pages 같은 곳에 업로드합니다.
2. 배포된 URL을 받습니다.
3. 그 URL로 QR코드를 생성합니다.
4. 전시장에는 관람자용 URL QR을 붙입니다.

관리자도 같은 사이트에서 들어갈 수 있고, 상단의 `직원 관리자` 버튼을 눌러 비밀번호를 입력하면 됩니다.

## 중요한 운영 제한

이 파일은 단일 HTML 시제품입니다.

한 브라우저 안에서는 한 인스타그램 아이디 1회 참여 제한이 작동하지만,
실제 전시에서 여러 관람자가 각자 휴대폰으로 접속하면 각 기기의 저장소가 분리됩니다.

정식 운영에서 재고, 당첨 기록, 중복 참여를 모든 기기에서 중앙 관리하려면
Supabase/Firebase 같은 데이터베이스가 연결된 서버형 버전이 필요합니다.
