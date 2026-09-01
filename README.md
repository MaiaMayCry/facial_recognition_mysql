# Facial Recognition + MySQL

A Python proof-of-concept authentication system that combines MySQL credential validation with webcam-based facial recognition.

The application is designed to:

1. Validate a user’s CPF, name, and password against MySQL.
2. Retrieve the user’s data based on the given ID.
3. Compare the user’s webcam image with a stored reference face.
4. Retrieve files associated with the authenticated user.

## Features

- MySQL-based user lookup
- CPF, name, and password validation
- Webcam capture using OpenCV
- Facial recognition using the `face_recognition` library
- File lookup associated with a user
- Basic visual feedback around detected faces

## Requirements

- Python 3.9 or newer
- MySQL Server 8 or newer

## Python dependencies:

The following can be installed with pip install
```text
opencv-python
face-recognition
mysql-connector-python
numpy
PyQt5
```
## Database Setup

Setup can be done with the given database.sql file. Run it from a terminal with:
```text
mysql -u root -p < database.sql
```

## Getting Started

Project can be started by running the Qt_Gui.py and starting the UI
