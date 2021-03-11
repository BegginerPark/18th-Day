var year = prompt("년도를 입력하세요: ")
function isLeapYear(year){
    if(year%4==0){
        return true;
    }
    else{
        return false;
    }
}console.log(isLeapYear(year));
