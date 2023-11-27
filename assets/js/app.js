/** @format */

(() => {
  //ミュージック再生設定
  const $playBtn = document.querySelectorAll(
    ".playlist .box-container .box .flex .play"
  );
  const $musicPlayer = document.querySelector(".music-player");
  const $musicAlbum = document.querySelector(".music-player .album");
  const $musicName = document.querySelector(".music-player .name");
  const $music = document.querySelector(".music-player .music");
  const $Artist = document.querySelector(".music-player .artist");

  $playBtn.forEach((play) => {
    play.addEventListener("click", () => {
      let src = play.getAttribute("data-src");
      let box = play.parentElement.parentElement;
      let album = box.querySelector(".album");
      let name = box.querySelector(".name");
      let artist = box.querySelector(".artist");

      $musicAlbum.src = album.src;
      $musicName.innerHTML = name.innerHTML;
      $Artist.innerHTML = artist.innerHTML;
      $music.src = src;

      $music.play();

      $musicPlayer.classList.add("active");
    });
  });

  document.querySelector('#close').addEventListener('click', ()=>{
    $musicPlayer.classList.remove('active');
    $music.pause();
  })
})();
