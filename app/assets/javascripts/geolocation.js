const getCurrentLocation = event => {
    event.preventDefault()
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(location => {
            let { latitude, longitude } = location.coords
            document.getElementById("coordinates").value = `${latitude}, ${longitude}`
            event.target.parentElement.submit()
        })
    }
}
