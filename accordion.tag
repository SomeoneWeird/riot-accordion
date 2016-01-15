<accordion>

  <h1>{ title }</h1>
  <ul>
    <li each={ entries }>
      <input type="checkbox" checked>
      <i></i>
      <h2>{ title }</h2>
      <p>{ body }</p>
    </li>
  </ul>

  <script>

    this.title   = "";
    this.entries = [];

    this.on("update", function() {

      this.title   = this.opts.title;
      this.entries = this.opts.entries;

    }.bind(this));

  </script>

  <style scoped>

    .transition, p, ul li i:before, ul li i:after {
      transition: all 0.25s ease-in-out;
    }

    .flipIn, h1, ul li {
      animation: flipdown 0.5s ease both;
    }

    .no-select, h2 {
      -webkit-tap-highlight-color: transparent;
      -webkit-touch-callout: none;
      -webkit-user-select: none;
      -khtml-user-select: none;
      -moz-user-select: none;
      -ms-user-select: none;
      user-select: none;
    }

    ul {
      list-style: none;
      perspective: 900;
      padding: 0;
      margin: 0;
    }

    ul li {
      position: relative;
      padding: 0;
      margin: 0;
      padding-bottom: 4px;
      padding-top: 18px;
      border-top: 1px dotted #dce7eb;
    }

    ul li:nth-of-type(1) {
      animation-delay: 0.5s;
    }

    ul li:nth-of-type(2) {
      animation-delay: 0.75s;
    }

    ul li:nth-of-type(3) {
      animation-delay: 1s;
    }

    ul li:last-of-type {
      padding-bottom: 0;
    }

    ul li i {
      position: absolute;
      transform: translate(-6px, 0);
      margin-top: 16px;
      right: 0;
    }

    ul li i:before, ul li i:after {
      content: "";
      position: absolute;
      background-color: black;
      width: 3px;
      height: 9px;
    }

    ul li i:before {
      transform: translate(-2px, 0) rotate(45deg);
    }

    ul li i:after {
      transform: translate(2px, 0) rotate(-45deg);
    }

    ul li input[type=checkbox] {
      position: absolute;
      cursor: pointer;
      width: 100%;
      height: 100%;
      z-index: 1;
      opacity: 0;
    }

    ul li input[type=checkbox]:checked ~ p {
      margin-top: 0;
      max-height: 0;
      opacity: 0;
      transform: translate(0, 50%);
    }

    ul li input[type=checkbox]:checked ~ i:before {
      transform: translate(2px, 0) rotate(45deg);
    }

    ul li input[type=checkbox]:checked ~ i:after {
      transform: translate(-2px, 0) rotate(-45deg);
    }


    @keyframes flipdown {
      0% {
        opacity: 0;
        transform-origin: top center;
        transform: rotateX(-90deg);
      }
      5% {
        opacity: 1;
      }
      80% {
        transform: rotateX(8deg);
      }
      83% {
        transform: rotateX(6deg);
      }
      92% {
        transform: rotateX(-3deg);
      }
      100% {
        transform-origin: top center;
        transform: rotateX(0deg);
      }
    }

  </style>

</accordion>
