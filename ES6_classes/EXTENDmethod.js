// extend method below


class Developer {
    constructor () {}

    showData(){
        return "this are the data"
    }
}

class FirstUser extends Developer {

}

const first_user = new FirstUser ();

console.log ("first_user----", first_user.showData());

// OUTPUT WOULD BE:    first_user---- this are the data