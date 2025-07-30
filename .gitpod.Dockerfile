FROM gitpod/workspace-python

ENV PYTHONUNBUFFERED=1

WORKDIR /workspace

RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends \
    ffmpeg \
    libsndfile1 \
    && sudo rm -rf /var/lib/apt/lists/*

COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

CMD ["python", "train_model.py", "--data_dir", "./data", "--output_dir", "./output"]
