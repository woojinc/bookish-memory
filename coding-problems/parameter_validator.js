function solution(S) {

    const inputString = S.split("--").splice(1);

    if (inputString.length === 0) return -1;

    let returnValue = 0;

    for (index in inputString) {

        if (returnValue === -1) return returnValue;

        const params = inputString[index].split(" ");

        switch (params[0].toLowerCase()) {
            case "count":
                
                param = parseInt(params.splice(1).join("").trim());
                console.log(param);
                if (param >= 10 && param <= 100) {
                    returnValue = (returnValue === 0) ? 0 : 1;
                } else {
                    returnValue = -1;
                }
                break;
            case "name":
                param = params[1].trim();
                if (param.length >= 3 && param.length <= 10) {
                    returnValue = (returnValue === 0) ? 0 : 1;
                } else {
                    returnValue = -1;
                }
                break;
            case "help":
                if (params.length === 1 || params[1] === "") {
                    returnValue = 1;
                } else {
                    returnValue = -1;
                }
                break;
            case "":
                break;
            default:
                returnValue = -1;
        }
    }

    return returnValue;
}

console.log(solution("--Help"));