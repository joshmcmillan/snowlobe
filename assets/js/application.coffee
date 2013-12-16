class Snowlobe
  lobes: Config.lobes
  currentLobe: 0

  constructor: ->
    @showLobe()
    window.addEventListener('shake', @showLobe, false)
    document.querySelector('#wrapper .plinth a').addEventListener('click', @showLobe, false)
    for i in [0...80]
      @addFlake()

  showLobe: (event) =>
    event.preventDefault() if event and 'preventDefault' of event

    image = document.querySelector('#wrapper .globe .image')
    image.className = 'image'

    setTimeout(=>
      image.className = 'image visible'
      image.style.backgroundImage = "url(#{@lobes[@currentLobe]})"
    , 300)

    ++@currentLobe
    @currentLobe = 0 if @currentLobe >= @lobes.length

  addFlake: ->
    left  = Math.floor(Math.random() * 320)
    delay = (Math.random() * 6).toFixed(2)

    flake = document.createElement('div')
    flake.className = 'flake'
    flake.style.left = "#{left}px"
    flake.style.webkitAnimationDelay = "-#{delay}s"

    document.querySelector('#wrapper .globe').appendChild(flake)

new Snowlobe