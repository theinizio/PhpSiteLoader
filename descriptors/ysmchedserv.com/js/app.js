$(document).ready(function () {

    $(".menu-icon").click(function () {
        $(this).toggleClass("effect");
        $('.navbar-list').toggleClass('toggleActive');
    });

    $('.question-block__title').on('click', function () {
        $(this).parent().find('.question-block__answer').slideToggle(200);
    });

    $('#form-get-in-touch').on('submit', function (e) {
        e.preventDefault();

        let valid = true;

        if (!validEmail($('#email'))) {
            valid = false;
        }

        if(valid) {

            let form = $(this).serializeArray();
            let sendData = {};

            for (let i = 0; i < form.length; i++) {
                sendData[form[i].name] = form[i].value;
            }

            console.log(sendData);

            $.ajax({
                type: "POST",
                url: "/getintouch",
                data: sendData,
                success: function (data) {
                    console.log('Success', data);
                    $('#form-get-in-touch').trigger("reset");
                },
                error: function (err) {
                    console.log('Err', err);
                }
            });
        }
    });

    $('#form-request').on('submit', function (e) {
        e.preventDefault();

        let valid = true;

        if (!validEmail($('#email'))) {
            valid = false;
        }

        if(valid) {

            let sendEmail = {};
            sendEmail.email = $('#email').val();

            console.log(sendEmail);

            $.ajax({
                type: "POST",
                url: "/site_name/unsubscribe_user",
                data: sendEmail,
                success: function (data) {
                    console.log('Success', data);
                    $('#form-request').trigger("reset");
                },
                error: function (err) {
                    console.log('Err', err);
                }
            });
        }
    });

    $('#privacy').on('click', function() {
        if ($(this).prop('checked')) {
            $('.cancellation-form__btn').prop('disabled', false);
        } else {
            $('.cancellation-form__btn').prop('disabled', true);
        }
    });

    function validEmail(_this) {
        let $inpVal = _this.val();
        let $regExp = /^(|(([A-Za-z0-9]+_+)|([A-Za-z0-9]+\-+)|([A-Za-z0-9]+\.+)|([A-Za-z0-9]+\++))*[A-Za-z0-9]+@((\w+\-+)|(\w+\.))*\w{1,63}\.[a-zA-Z]{2,6})$/;

        if ($inpVal === '' || !$regExp.test($inpVal)) {
            _this.addClass('inp-required');
            return false;
        }

        return true;
    }

    $('input').on('focus', function() {
        $(this).removeClass('inp-required');
    });

});