function animateValue(id, end) {

    let start = 0;

    let interval = setInterval(function(){

        start++

        document.getElementById(id).innerText = start

        if(start == end){
            clearInterval(interval)
        }

    },20)

}

window.onload = function(){

    animateValue("tournamentCount",12)
    animateValue("matchCount",48)
    animateValue("venueCount",6)
    animateValue("sponsorCount",10)

}