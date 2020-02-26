# 글 쓰는 법

1. 모든 글은 `_posts` 폴더 하단에 생성한다.
2. 편의를 위해 `_posts` 폴더 하단에 큰 카테고리 별로 폴더(`seminar`, `news` 등)를 나눴으나 실제 카테고리 구분 로직에 이용되지는 않는다.
3. 실제 카테고리 구분은 글 페이지의 상단 yaml의 `categories` 항목에서 한다.

# Index 페이지

- Index 페이지의 On Going Research Topic은 하단과 같이 글 상단 `categories` 항목에 `on-going-research`를 추가한 `가장 최근의 2개 글`이 노출된다.

```
---
...
categories: [news, on-going-research]
...
---
```
