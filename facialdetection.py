from flask import Flask, request, jsonify
import cv2
import numpy as np
from flask_cors import CORS
from deepface import DeepFace

app = Flask(__name__)
CORS(app)

faceCascade = cv2.CascadeClassifier(cv2.data.haarcascades + 'haarcascade_frontalface_default.xml') if cv2.data.haarcascades else cv2.CascadeClassifier('path_to_haarcascade_frontalface_default.xml')

def analyze_emotion(image):
    try:
        # Use DeepFace to analyze emotions directly from the image
        result = DeepFace.analyze(image, actions=['emotion'], enforce_detection=False)
        return result['dominant_emotion']

    except Exception as e:
        print("Error analyzing emotion:", str(e))
        return 'Unknown'

@app.route('/detect_emotion', methods=['POST'])
def detect_emotion():
    try:
        # Get image file from the request
        file = request.files['image']
        if file:
            # Read the image
            image = cv2.imdecode(np.fromstring(file.read(), np.uint8), cv2.IMREAD_COLOR)

            # Convert image to grayscale for face detection
            gray = cv2.cvtColor(image, cv2.COLOR_BGR2GRAY)

            # Detect faces in the image
            faces = faceCascade.detectMultiScale(
                gray,
                scaleFactor=1.2,
                minNeighbors=5,
                minSize=(20, 20)
            )

            # Loop through detected faces
            for (x, y, w, h) in faces:
                cv2.rectangle(image, (x, y), (x+w, y+h), (255, 0, 0), 2)

            # Get the dominant emotion using the analyze_emotion function
            emotion = analyze_emotion(image)

            print("Dominant Emotion:", emotion)

            return jsonify({"emotion": emotion})

    except Exception as e:
        print("Error:", str(e))
        return jsonify({"error": str(e)}), 500

if __name__ == '__main__':
    app.run(debug=True)
