<script
  src="https://code.jquery.com/jquery-3.6.0.min.js"
  integrity="sha256-/xUj+3OJU5yExlq6GSYGSHk7tPXikynS7ogEvDej/m4="
  crossorigin="anonymous"></script>
<script type="text/javascript">
window.onload = function () {
  var url = '/create_message';
  $.ajax({
    url: url,
    type: 'POST',
    dataType: 'application/x-www-form-urlencoded',
    data: {
      message: '攻撃スクリプトによる発言です',
    }
  }).done(function(data) {
    console.log(data);
  });
}
</script>
