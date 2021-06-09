Notify = function() {
	window.onload = function () {
        if (window.Notification) {
            Notification.requestPermission();
        }
    }
        if (Notification.permission !== 'granted') {
            alert('알림권한설정이 활성화되지 않았습니다!');
        }
        else {
            var notification = new Notification('Notification title', {
                icon: 'https://i.ibb.co/KGtBYnb/logo-size-invert.jpg',
                body: '고객님께서 예약하신 상품이 입고되었습니다. 클릭하시면 예약 페이지로 이동합니다.',
            });

            notification.onclick = function () {
                window.open('http://localhost:8888/hoxy/myPage.do', '_self');
            };
        }
}