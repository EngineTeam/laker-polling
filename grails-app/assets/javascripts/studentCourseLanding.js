var courseId;

$(function(){
	$.ajax({
        url: '/user/auth',
        method: "GET",

        success: function(data){
            token = data.data.token;
            $.ajax({
                url: '/api/question/active?access_token=' + token + '&course_id=' + courseId,
                type: 'GET',
                success: function(data) {
                    document.getElementById('livePollButton').style.visibility="visible";
                },
                error: function() {
                    document.getElementById('livePollMessage').style.visibility="visible";
                }
            });
        }
    });
        
});

function prepareClassTitle(cId) {
    courseId = cId;
}

