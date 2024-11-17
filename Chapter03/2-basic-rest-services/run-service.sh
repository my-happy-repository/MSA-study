#!/bin/bash

# 서비스 배열 정의
services=(
  "microservices/product-composite-service/build/libs/*.jar"
  "microservices/product-service/build/libs/*.jar"
  "microservices/recommendation-service/build/libs/*.jar"
  "microservices/review-service/build/libs/*.jar"
)

# 각 서비스를 실행
for service in "${services[@]}"; do
  # JAR 파일 찾기
  jar_file=$(ls $service 2>/dev/null)

  if [ -z "$jar_file" ]; then
    echo "JAR 파일을 찾을 수 없습니다: $service"
    continue
  fi

  echo "실행 중: $jar_file"
  java -jar "$jar_file" &

  # 실행 상태 출력
  if [ $? -eq 0 ]; then
    echo "$jar_file 실행 성공!"
  else
    echo "$jar_file 실행 실패!"
  fi
done

# 모든 백그라운드 프로세스 기다리기
wait
echo "모든 서비스가 종료되었습니다."