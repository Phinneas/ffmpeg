from flask import Flask, request, send_from_directory
import os
import subprocess

app = Flask(__name__)

@app.route('/upload', methods=['POST'])
def upload_file():
    if 'file' not in request.files:
        return "No file part"
    file = request.files['file']
    if file.filename == '':
        return "No selected file"
    if file:
        file.save(os.path.join('/app', file.filename))
        subprocess.run(['ffmpeg', '-i', f'/app/{file.filename}', f'/app/output_{file.filename}'])
        return f"File uploaded and processed: {file.filename}"

@app.route('/download/<filename>')
def download_file(filename):
    return send_from_directory('/app', filename, as_attachment=True)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
    #so we can rebuild

