document.addEventListener("turbolinks:load", () => {

    $("#needed, #unsorted").sortable({
        connectWith: ".connected"
    })

})