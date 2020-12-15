$(document).ready( function() {
    
    //CAMBIARE URL E APP_KEY 

    //ref URL
    var url = 'http://127.0.0.1:8000/carts';

        //ajax
        $.ajax ({
            url: url,
            method: 'GET',
            headers: {'APP_KEY': 'ABCDEFGH2020GOSPESA'},
            success: function(response) {
                $("#ajax").html(response);
            },
            error: function () {
                console.log('Unable to connect to DB');
            }
        });

}); //END DOCUMENT READY

  