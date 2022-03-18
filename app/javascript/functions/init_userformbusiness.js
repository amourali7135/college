const initUserformbusiness = () => {
    var userRoleInput = document.getElementById('user_type_pulldown');
    var photoPart = document.getElementById("photo_part");
    var locationSection = document.getElementById("location_label");
    if (userRoleInput) {
        userRoleInput.addEventListener('change', function () {
            if (userRoleInput.value == "Employer") {
                document.getElementById("organization_details").style.display = "block"; 
                photoPart.firstChild.innerText = "Logo or photo for your organization";
                photoPart.style.display = "block";
                locationSection.label = "Testing"; }
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