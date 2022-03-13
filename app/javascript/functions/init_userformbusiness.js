const initUserformbusiness = () => {
    var userRoleInput = document.getElementById('user_type_pulldown');
    if (userRoleInput) {
        userRoleInput.addEventListener('change', function () {
            if (userRoleInput.value == "Employer") {
                document.getElementById("organization_details").style.display = "block"; }
                else {
                    document.getElementById("organization_details").style.display = "none"; }
                });
            }   
            console.log("this shit again")
        }     

        export { initUserformbusiness };
        
        // window.addEventListener('DOMContentLoaded', (event) => {
        //     // My Code
        // });