## Product Composite 는 세 가지 핵심 서비스로 구성이 됨
## 쉽게 이해할 수 있도록 비즈니스 로직을 최소화 하였다.

### Product
#### Product Service 는 제품 정보를 관리한다.
- 제품 ID - ProductID
- 이름 Name
- 무게 Weight

### Review
##### Review 서비스는 리뷰 정보를 관리한다. 리뷰 정보의 속성은 다음과 같아.
- 제품 ID - ProductID
- 검토 ID - Review ID
- 작성자 Author
- 제목 Subject
- 콘텐츠 Content

### Recommendation
#### Recommendation 서비스는 추천 정보를 관리한다. 추천 정보의 속성은 다음과 같아
- 제품 ID - ProductID
- 추천 ID - RecommendationID
- 작성자 Author
- 평점 Rate
- 콘텐츠 Content

### Product Composite
#### Product Composite 서비스는 핵심 서비스에서 수집한 제품 관련 정보를 제공한다.
- 제품 정보
- 특정 제품의 리뷰 목록
- 특정 제품의 추천 목록


