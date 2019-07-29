
    $('#orderProductss').on('click', function() {
        CleanMessages();
        var clientName = $('#name').val();
        var email = $('#email').val();
        var phone = $('#phone').val();
		var nickname = $('#nickname').val();
		var product = $('#dropservice').val();
		var address = $('#address').val();
		var description = $('#description').val();
        
        if ((clientName != undefined && clientName != '' && clientName != null) 
        && (phone != undefined && phone != '' && phone != null) 
        && (product != undefined && product != '' && product != null)
        && (address != undefined && address != '' && address != null)) {
            $.ajax({
                url: 'insertOrder.php',
                method: 'post',
                data: 'clientName=' + clientName + '&email=' + email + '&phone=' + phone + '&nickname=' + nickname + '&product=' + product + '&address=' + address + '&description=' + description
            }).done(function(client) {
                client != '' ? JSON.parse(client) : null;
                if (client.error) 
                    TreatException(client.error);
                else
                    SuccessMessage();            
                
                CleanForm();
            });
        }
    });
    
    function CleanForm() {
        $('#name').val('');
        $('#email').val('');
        $('#phone').val('');
        $('#nickname').val('');
        $('#address').val('');
        $('#description').val('');
    }
    
    function CleanMessages() {
        $('#clientsuccess').text('');
        $('#clienterror').text('');
    }
    
    function SuccessMessage() {
        $('#clientsuccess').text('Cliente cadastrado com sucesso');
    }
    
    function TreatException(value) {
        $('#clienterror').text('Ocorreu uma falha no cadastro: ' + value.msg);
    }

    
