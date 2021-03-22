$(document).ready(function() {
    $('#commentSubmit').click(function(e) {
        e.preventDefault();
        let id = $('#singleId').val();
        let pseudo = $('#pseudo').val();
        let comment = $('#comment').val();
        
        $.post(
            'single.php?id='+id,
            {
                id: id,
                pseudo: pseudo,
                comment: comment
            },
            function(data){
                console.log(data);
            }
        )
    })
})