<div style="max-width:500px; margin:auto; padding:20px; border:1px solid #ccc; border-radius:10px;">
  <h3>料金シミュレーター</h3>

  <label>数量：</label>
  <input type="number" id="qty" value="1" min="1" oninput="calc()"><br><br>

  <label>単価（円）：</label>
  <input type="number" id="price" value="220" oninput="calc()"><br><br>

  <label>
    <input type="checkbox" id="option" onchange="calc()"> オプション追加（+100円）
  </label><br><br>

  <h4>合計：<span id="result">220</span> 円</h4>
</div>

<script>
function calc() {
  var qty = document.getElementById("qty").value;
  var price = document.getElementById("price").value;
  var option = document.getElementById("option").checked ? 100 : 0;

  var total = qty * price + option;

  document.getElementById("result").innerText = total;
}

// 初期計算
calc();
</script>
