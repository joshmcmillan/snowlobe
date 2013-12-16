# Lobes
lobes = [
  "http://distilleryimage4.ak.instagram.com/de84723658a711e380a30e9a0402a7de_8.jpg",
  "http://distilleryimage0.ak.instagram.com/5d7349a2591911e39a5a12a62c3665ab_8.jpg",
  "http://distilleryimage3.ak.instagram.com/93d36cbc56ed11e392f11272c16e65b0_8.jpg",
  "http://distilleryimage9.ak.instagram.com/57e8afa4585b11e3b8a312566eba8eff_8.jpg"
]
currentLobe = 0

showLobe = (event) ->
  event.preventDefault() if event and 'preventDefault' of event

  document.querySelector('#wrapper .globe').style.backgroundImage = "url(#{lobes[currentLobe]})"
  ++currentLobe
  currentLobe = 0 if currentLobe >= lobes.length

showLobe()

# Handle shakes
window.addEventListener('shake', showLobe, false)
document.querySelector('#wrapper .plinth a').addEventListener('click', showLobe, false)

# Snowflakes
addFlake = ->
  left  = Math.floor(Math.random() * 320)
  delay = (Math.random() * 6).toFixed(2)

  flake = document.createElement('div')
  flake.className = 'flake'
  flake.style.left = "#{left}px"
  flake.style.webkitAnimationDelay = "-#{delay}s"

  document.querySelector('#wrapper .globe').appendChild(flake)

for i in [0...80]
  addFlake()