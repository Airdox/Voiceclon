# .gitpod.Dockerfile

FROM gitpod/workspace-python

ENV PYTHONUNBUFFERED=1

WORKDIR /workspace

# Systemabhängigkeiten installieren (falls nötig, für Audio-Verarbeitung)
RUN sudo apt-get update && sudo apt-get install -y --no-install-recommends \
    ffmpeg \
        libsndfile1 \
            unzip \
                wget \
                    && sudo rm -rf /var/lib/apt/lists/*

                    COPY requirements.txt .
                    RUN pip install --no-cache-dir -r requirements.txt

                    # --- NEUER BEREICH FÜR TEST-DATENSATZ ---
                    ENV TEST_DATA_URL="http://download.tensorflow.org/data/speech_commands_v0.01.zip"
                    ENV TEST_DATA_DIR="./data/speech_commands_test" # Unterordner für den Testdatensatz
                    ENV TEST_ZIP_FILE="speech_commands_v0.01.zip"

                    RUN mkdir -p ${TEST_DATA_DIR} && \
                        wget -O ${TEST_ZIP_FILE} ${TEST_DATA_URL} && \
                            unzip ${TEST_ZIP_FILE} -d ${TEST_DATA_DIR} && \
                                rm ${TEST_ZIP_FILE} && \
                                    echo "Test-Datensatz heruntergeladen und entpackt nach ${TEST_DATA_DIR}"
                                    # --- ENDE NEUER BEREICH ---

                                    COPY . .

                                    CMD ["python", "train_model.py", "--data_dir", "./data/speech_commands_test", "--output_dir", "./output"]
                                    