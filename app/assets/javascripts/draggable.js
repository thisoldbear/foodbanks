document.addEventListener("turbolinks:load", () => {

    $("#list-1-foods, #unsorted-foods").sortable({
        connectWith: ".connected"
    })

})