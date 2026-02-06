## 🥇 2024 인하 인공지능 챌린지⠀
**한국 경제 기사 분석 및 질의응답** 모델 개발 대학원생 부문 대상⠀
<br>
<br>

## ❓ 대회 규칙
### 평가방식
* F1 Score
* 정량평가 100%

### 제약 사항
* 추론 리소스: 단일 GPU VRAM(48GB) 이내
* 외부 데이터 사용 불가
<br>

## 🙋‍♀️ 모델 학습
Model Candidate:
* Ko-Llama3 8B
* OPEN-SOLAR-KO 10.7B
* EEVE-Korean 10.8B
* EEVE-Korean-Instruct 10.8B 

<br>
최종적으로 **EEVE-Korean-Instruct 10.8B**이 Base Model로 선정
<br>

👉학습된 모델은 [HuggingFace](https://huggingface.co/SeoSaMo/Inha-EEVE-10.8B-V1.0) 
<br>
<br>

## 🛠 모델 추론 파이프라인
### 페르소나 설계
<img src="/images/image1.png" width="60%">

### Re-Inference
<img src="/images/image1.png" width="60%">

Re-inference, CoT, stage, self-refining 등 여러 프롬프트 기법을 조합하여 테스트 해 본 결과, <br>
re-inference만을 사용한 프롬프트에서 가장 좋은 성능을 보였습니다 👀 
<br>
<br>

## 🌲모델 사용해보기

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
