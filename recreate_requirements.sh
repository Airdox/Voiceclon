#!/bin/bash

# Dieses Skript erstellt die requirements.txt-Datei neu
# mit den empfohlenen Python-Bibliotheken und ihren Versionen
# für das Stimmmodell-Training.

echo "--- Erstelle requirements.txt neu ---"

REQUIREMENTS_FILE="requirements.txt"

# Lösche die bestehende Datei, falls vorhanden
if [ -f "$REQUIREMENTS_FILE" ]; then
    echo "Bestehende '$REQUIREMENTS_FILE' wird gelöscht..."
        rm "$REQUIREMENTS_FILE"
        fi

        # Schreibe die neuen Inhalte in die Datei
        echo "# Python-Abhängigkeiten für Stimmmodelltraining" >> "$REQUIREMENTS_FILE"
        echo "# Generiert am $(date +%Y-%m-%d)" >> "$REQUIREMENTS_FILE"
        echo "" >> "$REQUIREMENTS_FILE"
        echo "tensorflow==2.10.0" >> "$REQUIREMENTS_FILE"
        echo "librosa==0.9.1" >> "$REQUIREMENTS_FILE"
        echo "numpy==1.22.4" >> "$REQUIREMENTS_FILE"
        echo "scipy==1.8.0" >> "$REQUIREMENTS_FILE"
        echo "soundfile==0.12.1" >> "$REQUIREMENTS_FILE"
        echo "scikit-learn==1.0.2" >> "$REQUIREMENTS_FILE"
        echo "matplotlib" >> "$REQUIREMENTS_FILE" # Für eventuelle Visualisierungen

        echo "Die Datei '$REQUIREMENTS_FILE' wurde erfolgreich neu erstellt mit folgendem Inhalt:"
        echo "--------------------------------------------------------------------------------"
        cat "$REQUIREMENTS_FILE"
        echo "--------------------------------------------------------------------------------"

        echo "--- requirements.txt erfolgreich neu erstellt! ---"
        echo "Vergessen Sie nicht, die Änderungen zu committen und auf GitHub zu pushen:"
        echo "git add requirements.txt"
        echo "git commit -m \"Recreated requirements.txt with updated dependencies\""
        echo "git push origin main # Oder den Namen Ihres Hauptbranches"

        #!/bin/bash

        # Dieses Skript erstellt die requirements.txt-Datei neu
        # mit den empfohlenen Python-Bibliotheken und ihren Versionen
        # für das Stimmmodell-Training.

        echo "--- Erstelle requirements.txt neu ---"

        REQUIREMENTS_FILE="requirements.txt"

        # Lösche die bestehende Datei, falls vorhanden
        if [ -f "$REQUIREMENTS_FILE" ]; then
            echo "Bestehende '$REQUIREMENTS_FILE' wird gelöscht..."
                rm "$REQUIREMENTS_FILE"
                fi

                # Schreibe die neuen Inhalte in die Datei
                echo "# Python-Abhängigkeiten für Stimmmodelltraining" >> "$REQUIREMENTS_FILE"
                echo "# Generiert am $(date +%Y-%m-%d)" >> "$REQUIREMENTS_FILE"
                echo "" >> "$REQUIREMENTS_FILE"
                echo "tensorflow==2.10.0" >> "$REQUIREMENTS_FILE"
                echo "librosa==0.9.1" >> "$REQUIREMENTS_FILE"
                echo "numpy==1.22.4" >> "$REQUIREMENTS_FILE"
                echo "scipy==1.8.0" >> "$REQUIREMENTS_FILE"
                echo "soundfile==0.12.1" >> "$REQUIREMENTS_FILE"
                echo "scikit-learn==1.0.2" >> "$REQUIREMENTS_FILE"
                echo "matplotlib" >> "$REQUIREMENTS_FILE" # Für eventuelle Visualisierungen

                echo "Die Datei '$REQUIREMENTS_FILE' wurde erfolgreich neu erstellt mit folgendem Inhalt:"
                echo "--------------------------------------------------------------------------------"
                cat "$REQUIREMENTS_FILE"
                echo "--------------------------------------------------------------------------------"

                echo "--- requirements.txt erfolgreich neu erstellt! ---"
                echo "Vergessen Sie nicht, die Änderungen zu committen und auf GitHub zu pushen:"
                echo "git add requirements.txt"
                echo "git commit -m \"Recreated requirements.txt with updated dependencies\""
                echo "git push origin main # Oder den Namen Ihres Hauptbranches"

                