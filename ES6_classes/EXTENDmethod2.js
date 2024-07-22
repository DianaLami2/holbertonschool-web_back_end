// extend method below

class Developer {
    constructor(frontend, backend) {
        this._frontend = frontend;
        this._backend = backend;
    }

    showTech() {
        return "user tech are:" + this._frontend + this._backend + '' + this._backend;
    }
}

class FirstUser extends Developer {
    constructor(first_param, second_param) { // nese veprojme me extend do kemi 2 konstruktora qe do thirren, njeri i klases aktuale tjetri i klases qe po bejme extend.
        super(first_param, second_param); //Super Eshte keyword qe shkruhet e para brenda konstruktorit. Thirrret ne fazen e ezkekutimit.Pranon ose jo parameter. 
        this.first_param = first_param;
        this.second_param = second_param;
    }

    frontendUser() {
        return "first user is learning:" + this.second_param;
    }
}


const first_user =new FirstUser ("ReactJs", "NestJs");
consologe.log("first_user------", first_user);
// consologe.log("first_user------", first_user.showTech());
// consologe.log("first_user------", first_user.frontendUser());


