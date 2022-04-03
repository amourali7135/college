const initUserform = () => {
  var userRoleInput = document.getElementById("user_type_pulldown");
  var photoPart = document.getElementById("photo_part");
  var locationSection = document.getElementById("location_label");
  if (userRoleInput) {
    userRoleInput.addEventListener("change", function () {
      if (userRoleInput.value == "Employer") {
        document.getElementById("organization_details").style.display = "block";
        photoPart.firstChild.innerText =
          "Please upload your organization's logo  *";
        photoPart.style.display = "block";
        locationSection.style.display = "block";
        locationSection.firstChild.textContent =
          "Where is your organization located?  *";
      } 
      else if (userRoleInput.value == "Student") {
        document.getElementById("student_details").style.display = "block";
        photoPart.firstChild.innerText = "Photo of you  *";
        photoPart.style.display = "block";
        locationSection.style.display = "block";
        locationSection.firstChild.textContent = "Where are you located?  *";
      } else {
        document.getElementById("organization_details").style.display = "none";
        locationSection.style.display = "none";
        photoPart.style.display = "none";
      }
    });
  }
  console.log("refactor attempt");
};

export { initUserform };
