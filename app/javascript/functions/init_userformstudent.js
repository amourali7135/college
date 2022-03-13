const initUserformstudent = () => {
    var userRoleInput = document.getElementById('user_type_pulldown');
    if (userRoleInput) {
        userRoleInput.addEventListener('change', function () {
            if (userRoleInput.value == "Student") {
                document.getElementById("student_details").style.display = "block"; }
                else {
                    document.getElementById("student_details").style.display = "none"; }
        });
    }
        console.log("hello there again!")
    }

    export { initUserformstudent };
