const getCurrentLocation = event => {
    event.preventDefault()
    if (navigator.geolocation) {
        navigator.geolocation.getCurrentPosition(location => {
            let { latitude, longitude } = location.coords
            document.getElementById("lat").value = latitude
            document.getElementById("lng").value = longitude
            event.target.parentElement.submit()
        })
    }
}
