<!DOCTYPE html>
<html lang="ar" dir="rtl">
<head>
  <meta charset="UTF-8">
  <title>لعبة التخمين</title>
  <style>
    body {
      background: linear-gradient(to right, #0f2027, #203a43, #2c5364);
      color: #fff;
      font-family: 'Arial', sans-serif;
      text-align: center;
      padding: 50px;
    }
    h1 {
      font-size: 2em;
      margin-bottom: 20px;
    }
    button {
      background-color: #1abc9c;
      border: none;
      padding: 12px 24px;
      margin: 10px;
      font-size: 16px;
      cursor: pointer;
      border-radius: 8px;
      color: white;
    }
    button:hover {
      background-color: #16a085;
    }
    #content {
      margin-top: 30px;
      font-size: 18px;
    }
  </style>
</head>
<body>

  <h1>لعبة تخمين الرقم من 1 إلى 1000</h1>

  <button onclick="startGame()">ابدأ التخمين</button>
  <button onclick="showDevelopers()">المطورون</button>

  <div id="content"></div>

  <script>
    let number = 0;
    let attempts = 20;

    function startGame() {
      number = Math.floor(Math.random() * 1000) + 1;
      attempts = 20;
      guessLoop();
    }

    function guessLoop() {
      if (attempts <= 0) {
        document.getElementById('content').innerHTML = "انتهت المحاولات! الرقم الصحيح كان: " + number;
        return;
      }

      const guess = prompt("أدخل رقم من 1 إلى 1000 (محاولات متبقية: " + attempts + "):");
      if (guess === null) return; // تم الإلغاء

      const guessNum = parseInt(guess);
      if (isNaN(guessNum) || guessNum < 1 || guessNum > 1000) {
        alert("من فضلك أدخل رقم صالح من 1 إلى 1000.");
        guessLoop();
        return;
      }

      attempts--;

      if (guessNum === number) {
        document.getElementById('content').innerHTML = "مبروك! خمنت الرقم الصحيح: " + number;
      } else if (guessNum > number) {
        alert("الرقم أقل من " + guessNum);
        guessLoop();
      } else {
        alert("الرقم أكبر من " + guessNum);
        guessLoop();
      }
    }

    function showDevelopers() {
      document.getElementById('content').innerHTML =
        "<h3>صاحب الموقع:</h3><p>DEVX</p><h3>مطور مساعد:</h3><p>مصطفى محمود</p>";
    }
  </script>

</body>
</html>
# Auto-start HTTP server for guessing game
cd ~/site
nohup python -m http.server 8888 > /dev/null 2>&1 &
echo -e "\e[32m[+] الموقع يعمل على: http://localhost:8888/guess.html\e[0m"
# شغل سيرفر HTTP دائماً على بورت 8888 من مجلد mysite
cd ~/mysite

# تأكد انه ما في سيرفر شغال على نفس البورت
pkill -f "python -m http.server"

# شغل السيرفر في الخلفية بصمت
nohup python -m http.server 8888 > /dev/null 2>&1 &

# اطبع رسالة تأكيد باللون الأخضر
echo -e "\e[32m[+] الموقع يعمل على: http://localhost:8888/index.html\e[0m"python ~/welcome.py
bash ~/legendary.sh
