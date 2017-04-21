/**
 * 禁止退格键
 * 
 * 依赖 jquery
 */

 $(function(){
	 $(document).keydown(function (event) {
         if (document.activeElement.type == 'text') {
             return true;
         }
         if (event.keyCode == 13) {
             return false;
         }
         if (event.ctrlKey) return false;
         if (event.keyCode == 8) {
             return false;
         }
	 });
 });