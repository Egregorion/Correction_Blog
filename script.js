$(document).ready(function() {
    $('#commentSubmit').click(function(e) {
        e.preventDefault();
        let id = $('#singleId').val();
        let pseudo = $('#pseudo').val();
        let comment = $('#comment').val();
        
        $.post(
            'comments.php',
            {
                id: id,
                pseudo: pseudo,
                comment: comment
            },
            function(data){
                let badgeValue = parseInt($('#badge').html());
                newBadgeValue = badgeValue += 1;
                $('#badge').html(newBadgeValue);
                $('#comments').html(data);
            }
        )
        $('#pseudo').val('');
        $('#comment').val('');
    })
})