# 2025 인하 인공지능 챌린지

## 소개
한국 경제 기사 분석 및 질의응답


## 내용

### 학습
외부 데이터 사용 제한 규칙과 추론 리소스 제한이 있어 다양한 모델 테스트 후 제한 내에서 가장 좋은 퍼포먼스를 보인 "yanolja/EEVE-Korean-Instruct-10.8B-v1.0" 모델을 베이스로 선정

### 추론

Re-inference, CoT, stage, self-refining 등 여러 프롬프트 기법을 조합하여 테스트 해 본 결과, re-inference만을 사용한 프롬프트에서 가장 좋은 성능을 보임

결과 모델은 [HuggingFace](https://huggingface.co/SeoSaMo/Inha-EEVE-10.8B-V1.0)에서 확인할 수 있음

## 실행
> pytorch/pytorch_2.4.0-cuda12.4-cudnn9-runtime/jupyter 이미지 환경에서 진행

1. 학습 데이터 다운로드 ([링크](https://dacon.io/competitions/official/236291/data))
```
데이콘 홈페이지에서 학습 및 테스트 데이터셋 다운로드
```
2. 모델 학습
> 학습과 추론 전, sh 파일의 INPUT_PATH/OUTPUT_PATH 설정
```
chmod +x train.sh
train.sh
```
3. 모델 추론
```
chmod +x re_inference.sh
re_inference.sh
```



실행 전, OUTPATH와 INPUTPATH 