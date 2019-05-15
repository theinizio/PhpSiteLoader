const url = "http://localhost/api/offer/";

function after_load() {

    $(".menu-icon").on('click', function () {
        $(this).toggleClass("effect1");
        $('.header__list').toggleClass('menu-active');
    });

    $('#agree').on('click', function () {
        if ($(this).prop('checked')) {
            $('#btn-form-submit').prop('disabled', false);
        } else {
            $('#btn-form-submit').prop('disabled', true);
        }
    });

    $('input').on('focus', function () {
        $(this).addClass('inp-focus');
    });

    $('input').on('blur', function () {
        $(this).removeClass('inp-focus');
    });


    $('.form').validate({
        rules: {
            firstName: {
                required: true
            },
            lastName: {
                required: true
            },
            email: {
                required: true,
                email: true
            },
            phone: {
                required: true
            },
            city: {
                required: true
            },
            address: {
                required: true
            },
            zip: {
                required: true
            }
        },
        messages: {
            firstName: {
                required: "The First name field is required."
            },
            lastName: {
                required: 'The Last name field is required.'
            },
            email: {
                required: 'The Email field is required.'
            },
            phone: {
                required: 'The Phone field is required.'
            },
            city: {
                required: 'The City field is required.'
            },
            address: {
                required: 'The Address field is required.'
            },
            zip: {
                required: 'The ZIP field is required.'
            }
        },
        submitHandler: function () {
            $('.form').hide();
            $('.form-payment').show();
        }
    });

    $('.form-payment').validate({
        rules: {
            cartNumber: {
                required: true,
                minlength: 15,
                normalizer: function (value) {
                    value = value.replace(/\s+/g, '');
                    return $.trim(value);
                }
            },
            expirationDate: {
                required: true,
                minlength: 5
            },
            name: {
                required: true
            },
            cvv: {
                required: true,
                minlength: 3
            }
        },
        messages: {
            cartNumber: {
                required: "The Cart number field is required.",
                minlength: "The Cart number field must be at least 15 characters."
            },
            expirationDate: {
                required: 'The Expiration date field must be at least 4 characters.'
            },
            name: {
                required: 'The Name field is required.'
            },
            cvv: {
                required: 'The cvv field must be at least 3 characters.'
            }
        },
        submitHandler: function () {

            let formData = {};

            let urlData = window.location.search.replace('?', '').split('&').reduce(
                function (p, e) {

                    if (e !== '') {
                        var a = e.split('=');

                        if (a[0] !== '' && a[1] !== '') {
                            p[decodeURIComponent(a[0])] = decodeURIComponent(a[1]);
                        } else {
                            window.location.href = 'error404.html';
                        }
                    } else {
                        window.location.href = 'error404.html';
                    }

                    return p;
                },
                {}
            );

            let hostname = window.location.hostname;
            let form = $('.form').serializeArray();
            let formPayment = $('.form-payment').serializeArray();

            for (let i = 0; i < form.length; i++) {
                formData[form[i].name] = form[i].value;
            }

            for (let i = 0; i < formPayment.length; i++) {
                formData[formPayment[i].name] = formPayment[i].value;
            }

            let sendData = Object.assign(urlData, formData);
            sendData.host = hostname;

            sendData.cartNumber = parseInt(sendData.cartNumber.replace(/\s+/g, ''));
            sendData.phone = parseInt(sendData.phone.replace(/\s+/g, '').match(/\d+/g).join(''));


            console.log('sendData', jQuery.param(sendData));

            // ajax
            /*var xhr = new XMLHttpRequest();

            xhr.open('POST', 'https://blueomedia.com/lp');

            // xhr.setRequestHeader('Content-Type', 'multipart/form-data');

            xhr.onreadystatechange = function() {
                if (xhr.readyState === 4 && xhr.status === 200) {
                    console.log('success');
                }
            };

            xhr.send(sendData);*/

            // $.ajax({
            //     // async: false,
            //     url: url,
            //     type: "POST",
            //     // dataType: "jsonp",
            //     contentType: "application/json",
            //     data: sendData,
            //     headers: {
            //         'Accept': 'application/json',
            //         "Content-Type": "application/json",
            //     },
            //     //headers: new Headers({'Origin': window.location.hostname}),
            //     cache: false,
            //     //crossDomain: true,
            //     beforeSend: function (status, obj) {
            //         console.log(status);
            //         console.log(obj);
            //     },
            //     success: function (data) {
            //         console.log(data);
            //         $('.form, .form-payment').trigger('reset');
            //     },
            //     error: function (err) {
            //         console.log(err);
            //         // window.location.href = 'error404.html';
            //     }
            // });


            //TODO remove this after test
            sendData.cartType = 'visa';


            fetch('http://192.168.88.204/api/offer?'+jQuery.param( sendData), {
                method: 'POST',
                headers: new Headers({
                    'Origin': window.location.hostname
                }),
            })
                .then((response) => {
                 //   console.log(response);
                    return response.json();
                }).then(res => {
                console.log(res);
            })
                .catch(err => console.error(err));

        }
    });


    // === mask input
    $('[name="phone"]').mask("+380 (99) 999 99 99");


    // === cleave js
    var expirationDate = new Cleave('[name="expirationDate"]', {
        date: true,
        datePattern: ['m', 'y']
    });

    var cartNumber = new Cleave('[name="cartNumber"]', {
        creditCard: true,
        onCreditCardTypeChanged: function (type) {
            // console.log(type);
            if (type === 'unknown') {
                $('[name="cartType"]').val('');
                $('[name="cvv"]').attr({
                    maxlength: 3,
                    placeholder: '000',
                }).val('');
            } else if (type === 'amex') {
                $('[name="cartType"]').val(type);
                $('[name="cvv"]').attr({
                    maxlength: 4,
                    placeholder: '0000',
                }).val('');
            } else {
                $('[name="cartType"]').val(type);
                $('[name="cvv"]').attr({
                    maxlength: 3,
                    placeholder: '000',
                }).val('');
            }
        }
    });


    // === ВВОД ТОЛЬКО ЦИФР === //
    $('.only-number').bind("change keyup input click", function () {
        if ($(this).val().match(/[^0-9]/g)) {
            $(this).val($(this).val().replace(/[^0-9]/g, ''));
        }
    });

}