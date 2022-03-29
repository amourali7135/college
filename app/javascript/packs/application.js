// This file is automatically compiled by Webpack, along with any other files
// present in this directory. You're encouraged to place your actual application logic in
// a relevant structure within app/javascript and only use these pack files to reference
// that code so it'll be compiled.

import Rails from "@rails/ujs"
import Turbolinks from "turbolinks"
import * as ActiveStorage from "@rails/activestorage"
import "channels"

Rails.start()
Turbolinks.start()
ActiveStorage.start()

import "controllers"
import "bootstrap"



import { initUserformbusiness, _initUserformbusiness } from '../functions/init_userformbusiness';
import { initUserformstudent, _initUserformstudent } from '../functions/init_userformstudent';
import { initProgramform, _initProgramform } 
from '../functions/init_programform';

document.addEventListener('turbolinks:load', () => {
    // Call your functions here, e.g:
    // initSelect2();
    initUserformbusiness();
    initUserformstudent();
    initProgramform();
  });


