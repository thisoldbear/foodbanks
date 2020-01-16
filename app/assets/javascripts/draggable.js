document.addEventListener("turbolinks:load", () => {

    $("#urgent, #needed, #unsorted").sortable({
        connectWith: ".connected",
        update: function (e, ui) {

            console.log($(this).sortable( "widget" )[0].id)
            console.log($(this).sortable( "toArray" ))

            fetch($(this).data("url"), {
                method: "PATCH",
                headers: {
                    "X-CSRF-Token": document.getElementsByName('csrf-token')[0].content,
                    'Content-Type': 'application/json'
                },
                body: JSON.stringify({
                    priority: $(this).sortable( "widget" )[0].id,
                    items: $(this).sortable( "toArray" )
                })
            })
        }
    })

})