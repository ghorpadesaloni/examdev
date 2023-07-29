from flask import Flask

app = Flask(__name__)

@app.route('/')
def welcome():
    return "Welcome to ITIL Exam"

@app.route('/modules')
def modules():
    module_names = [
        "FCN",
        "cosa",
        "devops",
        "security concept",
        "cyber forensic",
        "NDC& PKI",
        # Add more module names as needed
    ]
    return "List of ITIL Exam modules: " + ', '.join(module_names)

@app.route('/student_info')
def student_info():
    prn = "230344223021"
    name = "Saloni Ghorpade"
    phone_number = "8652550381"
    return f"PRN NO.: {prn}\nNAME: {name}\nPHONE NUMBER: {phone_number}"

if __name__ == '__main__':
    app.run(port=4000, debug=True)

