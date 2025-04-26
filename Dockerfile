# Python 환경 준비
FROM python:3.10-slim

# 작업 폴더 생성
WORKDIR /app

# 현재 코드 복사
COPY . .

# 필요한 라이브러리 설치
RUN pip install --no-cache-dir -r requirements.txt

# 사용할 포트 열기
EXPOSE 10000

# 서버 실행 명령어
CMD ["uvicorn", "app:app", "--host", "0.0.0.0", "--port", "10000"]
