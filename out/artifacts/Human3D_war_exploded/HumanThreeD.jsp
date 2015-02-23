<%@ page import="com.human3d.pojo.Patient" %>
<%@ page import="com.human3d.pojo.Position" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>three.js webgl - morph target - human</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, user-scalable=no, minimum-scale=1.0, maximum-scale=1.0">
  <script type="text/javascript"
          src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.2/jquery.min.js" ></script>

  <%--<link href ="css/bootstrap/css/bootstrap.min.css" rel="stylesheet">--%>
  <%--<link href ="css/customStyle.css" rel="stylesheet">--%>
  <style>
    body {
      color: #000;
      font-family:Monospace;
      font-size:13px;
      text-align:center;

      background-color: #fff;
      margin: 0px;
      overflow: hidden;
    }

    #info {
      position: absolute;
      top: 0px; width: 100%;
      padding: 5px;
    }

    a {
      color: #0af;
    }

    div#d {
      position: absolute;
      display: none;
      height: 20px;
      line-height: 20px;
      width: 120px;
    }
    input#i {
      width:70px;
      height: 20px;
      line-height: 20px;
      border-radius: 4px;
      border: 1px solid #ccc;
      padding: 0 3px;
    }
    button#b {
      width: 20px;
      height: 20px;
      padding: 0;
    }
    input[type=hidden] {
      display: none;
    }
    div#l {
      color: #fafafa;
      line-height: 30px;
      text-align: center;
      position: absolute;
      top: 20px;
      left: 30px;
      width: 200px;
      background: #000;
    }
    div#l > span {
      height: 30px;
      line-height: 30px;
      border-bottom: 1px solid #ccc;
      display: block;
      width: 100%;
    }
    div#l > span:hover {
      color: #000;
      background: #fafafa;
      cursor: pointer;
    }
  </style>
</head>

<body>
<%--<div>--%>
<%--<nav class="navbar navbar-inverse" role="navigation" style="margin-bottom: 0px;height: 52px">--%>

  <%--<div class="container">--%>
    <%--<div id="navbar" class="navbar-collapse collapse" style="font-size:78%;">--%>
      <%--<ul class="nav navbar-nav">--%>
        <%--<li class="active"><a href="index.html"><img height="35px" width="50px" style="padding-bottom: 10px"src="img/logo.png" width="200px"/><img height="35px" width="200px" style="padding-bottom: 10px"src="img/logoTitle.png" width="200px"/></a></li>--%>
        <%--<li><a href="./Landing.jsp" style="margin-left: 350px;">Dashboard</a></li>--%>


      <%--</ul>--%>
    <%--</div>--%>
  <%--</div>--%>

<%--</nav>--%>
<%--</div>--%>

<div id="container"></div>
<div id="d">
  <input type="hidden" id="x">
  <input type="hidden" id="y">
  <input type="hidden" id="c">
  <input type="text" id="i" placeholder="Label">
  <button id="b" onclick="saveButtonClick();">...</button>
</div>
<div id="l">

</div>

<script src="./js/three.js"></script>

<script src="js/UCSCharacter.js"></script>
<script src="http://mrdoob.github.com/three.js/examples/fonts/helvetiker_regular.typeface.js"></script>
<script src="js/Detector.js"></script>
<script src="js/CanvasRenderer.js"></script>

<script src="js/utils/GeometryUtils.js"></script>

<script src="js/shaders/ConvolutionShader.js"></script>
<script src="js/shaders/CopyShader.js"></script>
<script src="js/shaders/FilmShader.js"></script>
<script src="js/shaders/FXAAShader.js"></script>

<script src="js/postprocessing/EffectComposer.js"></script>
<script src="js/postprocessing/RenderPass.js"></script>
<script src="js/postprocessing/ShaderPass.js"></script>
<script src="js/postprocessing/MaskPass.js"></script>
<script src="js/postprocessing/BloomPass.js"></script>
<script src="js/postprocessing/FilmPass.js"></script>

<script src="js/Detector.js"></script>
<script src="js/libs/stats.min.js"></script>

<!-- load the font files -->

<script src="fonts/gentilis_bold.typeface.js"></script>
<script src="fonts/gentilis_regular.typeface.js"></script>
<script src="fonts/optimer_bold.typeface.js"></script>
<script src="fonts/optimer_regular.typeface.js"></script>
<script src="fonts/helvetiker_bold.typeface.js"></script>
<script src="fonts/helvetiker_regular.typeface.js"></script>
<script src="fonts/droid/droid_sans_regular.typeface.js"></script>
<script src="fonts/droid/droid_sans_bold.typeface.js"></script>
<script src="fonts/droid/droid_serif_regular.typeface.js"></script>
<script src="fonts/droid/droid_serif_bold.typeface.js"></script>
<script src='js/dat.gui.min.js'></script>

<script src="js/OrbitControls.js"></script>

<script>

  var SCREEN_WIDTH = window.innerWidth;
  var SCREEN_HEIGHT = window.innerHeight;

  var container;

  var camera, scene;
  var renderer;
  var character;
  var controls;

  var objects;
  var raycaster;

  var mouseX = 0, mouseY = 0;

  var windowHalfX = window.innerWidth / 2;
  var windowHalfY = window.innerHeight / 2;

  var clock = new THREE.Clock();

  var gui, skinConfig, morphConfig;

  var points = [];

  init();
  animate();

  function populateLabels(){
    var labels = getLabels();
    var l = document.getElementById('l');
    var html = "";
    for(var i=0; i<labels.length; i++){
      html += "<span>" + labels[i].text + "</span>";
    }
    l.innerHTML = html;
  }
  var saved;
  function init() {

    //populateLabels();

    container = document.getElementById( 'container' );

    camera = new THREE.PerspectiveCamera( 60, window.innerWidth / window.innerHeight, 1, 100000 );
    camera.position.set( 2000, 5000, 5000 );

    scene = new THREE.Scene();


    // LIGHTS

    var light = new THREE.DirectionalLight( 0xffffff, 1 );
    light.position.set( 0, 140, 500 );
    light.position.multiplyScalar( 1.1 );
    light.color.setHSL( 0.6, 0.075, 1 );
    scene.add( light );

    //

    light = new THREE.DirectionalLight( 0xffffff, 1 );
    light.position.set( 0, -1, 0 );
    scene.add( light );

    // RAYCASTER
    raycaster = new THREE.Raycaster();

    // RENDERER

    renderer = new THREE.WebGLRenderer( { antialias: true } );
    renderer.setSize( SCREEN_WIDTH, SCREEN_HEIGHT );
    renderer.setClearColor( 0xffffff );
    container.appendChild( renderer.domElement );

    // CHARACTER

    character = new THREE.UCSCharacter();
    character.onLoadComplete = function() {
      gui = new dat.GUI();
      setupSkinsGUI();
      setupMorphsGUI();
      gui.width = 300;
      gui.open();
    };

    var loader = new THREE.XHRLoader();
    loader.load("assets/UCS_config.json", function ( text ) {

      var config = JSON.parse( text );
      character.loadParts( config );
      scene.add( character.root );

    } );

    window.addEventListener( 'resize', onWindowResize, false );

    controls = new THREE.OrbitControls( camera, renderer.domElement );
    controls.center.set( 0, 3000, 0);

    controls.addEventListener( 'change', render );

    renderer.domElement.addEventListener('dblclick', mouseDownHandler);

    renderer.domElement.addEventListener('mousedown', hideLabelInput);

    window.addEventListener('resize', hideLabelInput);
    projectValues();

  }

  function generateHistory()
  {

  }

  function hideLabelInput(){
    var d = document.getElementById('d');
    d.style.display = 'none';
  }

  var PI2 = Math.PI * 2;
  var particleMaterial = new THREE.SpriteCanvasMaterial( {

    color: 0x000000,
    program: function ( context ) {

      context.beginPath();
      context.arc( 0, 0, 0.5, 0, PI2, true );
      context.fill();

    }

  } );

  function saveLabel(pos, color, text){
    var labels = getLabels();
    labels.push({
      x: pos.x,
      y: pos.y,
      z: pos.z,
      color: color,
      text: text
    });
    localStorage.setItem('bodyLabels', JSON.stringify(labels));
    //populateLabels();
  }

  function getLabels(){
    return JSON.parse(localStorage.getItem('bodyLabels') || '[]');
  }

  function getLabelMap(){
    var labels = getLabels();
    var map = {};
    for(var i=0; i<labels.length; i++){
      map[labels[i].x + '|' + labels[i].y + '|' + labels[i].z] = labels[i];
    }
    return map;
  }

  function labelByPosition(x, y, z){
    var map = getLabelMap();
    return map[x + '|' + y + '|' + z];
  }

  function pointAt(pos, color){
    var sphereMaterial = new THREE.MeshLambertMaterial({ color: color });
    var radius = 20, segments = 16, rings = 16;
    var sphere = new THREE.Mesh( new THREE.SphereGeometry(radius, segments, rings), sphereMaterial);
    sphere.position.copy(pos);
    sphere.scale.set( 1, 1, 1 );
    sphere.overdraw = true;
    points.push(sphere);
    scene.add(sphere);

  }

  function globalPosition(v){
    var vector = new THREE.Vector3();
    vector.copy( v );
    vector.unproject( camera );

    var dir = vector.sub( camera.position ).normalize();
    var distance = - camera.position.z / dir.z;

    return camera.position.clone().add( dir.multiplyScalar( distance ) );
  }

  function globalDirection(v){
    var vector = new THREE.Vector3();
    vector.copy( v );
    vector.unproject( camera );
    return vector.sub( camera.position ).normalize();
  }

  function clickEventVector(event){
    var vector = new THREE.Vector3();
    var z_rotation = camera.rotation._z * 180 / Math.PI + 180;
    var z;
    if(z_rotation > 90 && z_rotation <= 270){
      z = 20;
    } else {
      z = -1000;
    }
    vector.set( ( event.clientX / window.innerWidth ) * 2 - 1, - ( event.clientY / window.innerHeight ) * 2 + 1, z);
    return vector;
  }

  function saveButtonClick(){

    $(document).ready(function() {
    var i = document.getElementById('i');
    var x = document.getElementById('x');
    var y = document.getElementById('y');
    var c = document.getElementById('c');
    var vector = clickEventVector({
      clientX: x.value,
      clientY: y.value
    });
    document.getElementById("dC").value= i.value;


    var material = new THREE.MeshPhongMaterial({
      color: 0xffffff
    });



    var textGeom = new THREE.TextGeometry( i.value, {
      font: 'helvetiker' ,color:'black'// Must be lowercase!
    });
    var textMesh = new THREE.Mesh( textGeom, material );
    textMesh.position.copy(saved);
    scene.add( textMesh );
    $.post('/Point',{data:document.getElementById("z1").value+"&"+document.getElementById("x").value+"&"+document.getElementById("y").value+"&"+document.getElementById("dC").value},function (data){});

    saveLabel(vector, c.value, i.value);
    hideLabelInput();
    });
  }

  function showLabelInput(event, color){
    var d = document.getElementById('d');
    var i = document.getElementById('i');
    var b = document.getElementById('b');
    var x = document.getElementById('x');
    var y = document.getElementById('y');
    var c = document.getElementById('c');
    x.value = event.clientX;
    y.value = event.clientY;
    c.value = color;
    d.style.display = 'block';
    i.value = '';
    d.style.top = (event.clientY) + 'px';
    d.style.left = (event.clientX) + 'px';
  }

  function mouseDownHandler(event){
    event.preventDefault();
    assignValues(event)
    var color = Math.random() * 0xffffff;

    showLabelInput(event, color);

    var vector = clickEventVector(event);
    var dir = globalDirection(vector);
    var pos = globalPosition(vector);


    pointAt(pos, color);
    saved=pos;



    var viewVector = new THREE.Vector3();
    viewVector.copy(camera.position);

//				pointAt(viewVector, 0xff0000);

    // Draw a line for debugging
//				var material = new THREE.LineBasicMaterial({
//					color: 0x0000ff
//				});
//				var geometry = new THREE.Geometry();
//				geometry.vertices.push(viewVector);
//				geometry.vertices.push(pos);
//				var line = new THREE.Line(geometry, material);
//				scene.add(line);

    raycaster.ray.set( viewVector, dir );

    var objects = [];
    character.root.traverse(function(obj){
      if(obj.children.length === 0)
        objects.push(obj);
    });

    var intersects = raycaster.intersectObjects( character.root.children, true );
    console.log('intersects');
    console.log(intersects);

    if ( intersects.length > 0 ) {

      pointAt(intersects[0].point, Math.random() * 0xffffff);

    }
  }

  function setupSkinsGUI() {

    var skinGui = gui.addFolder( "Skins" );

    skinConfig = {
      wireframe: false
    };

    var skinCallback = function( index ) {
      return function () {
        character.setSkin( index );
      };
    };

    for ( var i = 0; i < character.numSkins; i++ ) {
      var name = character.skins[ i ].name;
      skinConfig[ name ] = skinCallback( i );
    }

    for ( var i = 0; i < character.numSkins; i++ ) {
      skinGui.add( skinConfig, character.skins[i].name );
    }

    skinGui.open();

  }

  function setupMorphsGUI() {

    var morphGui = gui.addFolder( "Morphs" );

    morphConfig = {
    };

    var morphCallback = function( index ) {
      return function () {
        character.updateMorphs( morphConfig );
      }
    };

    for ( var i = 0; i < character.numMorphs; i ++ ) {
      var morphName = character.morphs[ i ];
      morphConfig[ morphName ] = 0;
    }

    for ( var i = 0; i < character.numMorphs; i ++ ) {
      morphGui.add( morphConfig, character.morphs[ i ] ).min( 0 ).max( 100 ).onChange( morphCallback( i ) );
    }

    morphGui.open();

  }

  function onWindowResize() {

    windowHalfX = window.innerWidth / 2;
    windowHalfY = window.innerHeight / 2;

    camera.aspect = window.innerWidth / window.innerHeight;
    camera.updateProjectionMatrix();

    renderer.setSize( window.innerWidth, window.innerHeight );

  }

  function onDocumentMouseMove( event ) {

    mouseX = ( event.clientX - windowHalfX ) * 10;
    mouseY = ( event.clientY - windowHalfY ) * 10;

  }

  //

  function animate() {

    requestAnimationFrame( animate );

    controls.update();

    render();

  }

  function render() {

    var delta = 0.75 * clock.getDelta();

    // update skinning

    THREE.AnimationHandler.update( delta );

    renderer.render( scene, camera );

  }

  function assignValues(event)
  {
    var x=document.getElementById("xC");
    x.value=event.clientX;

    var y=document.getElementById("yC");
    y.value=event.clientY;

    var mVector=new THREE.Vector3();
    mVector.set( ( event.clientX / window.innerWidth ) * 2 - 1, - ( event.clientY / window.innerHeight ) * 2 + 1, 0.5 );



    mVector.unproject( camera );
    //alert(window.JSON.stringify(globalPosition(mVector)));
    document.getElementById("z1").value=window.JSON.stringify(globalPosition(mVector));




  }

  function projectValues()
  {
    <%if(null!=session.getAttribute("patient"))
      {
      Patient patient=(Patient)session.getAttribute("patient");
      if(patient.getPosList().size()>0)
        {
        int counter=0;
          for(Position pos:patient.getPosList())
          {
          %>
            var vector<%=counter%> = new THREE.Vector3();
            var xM<%=counter%>=<%=pos.getX()%>;
            var yM<%=counter%>=<%=pos.getY()%>;
            vector<%=counter%>.set( (  xM<%=counter%>/ window.innerWidth ) * 2 - 1, - ( yM<%=counter%> / window.innerHeight ) * 2 + 1, 0.5 );
            var pos<%=counter%> = globalPosition(vector<%=counter%>);
           var color<%=counter%> = Math.random() * 0xffffff;
           pointAt(pos<%=counter%>, color<%=counter%>);
           var  nSaved<%=counter%>=pos<%=counter%>;

            var material<%=counter%> = new THREE.MeshPhongMaterial({
              color: 0xffffff
            });



            var textGeom<%=counter%> = new THREE.TextGeometry( "<%=pos.getData()%>", {
              font: 'helvetiker' ,color:'black'// Must be lowercase!
            });
            var textMesh<%=counter%> = new THREE.Mesh( textGeom<%=counter%>, material<%=counter%> );
            textMesh<%=counter%>.position.copy(nSaved<%=counter%>.x,nSaved<%=counter%>.y,nSaved<%=counter%>.z);
            scene.add( textMesh<%=counter%> );
              <%=counter++%>

        <%
          }
        }
      }
    %>
  }




</script>
<form name="saveData" id="saveData" action="/Point" method="post">
  <input type="hidden" value="" name="x" id="xC">
  <input type="hidden" value="" name="y" id="yC">
  <input type="hidden" value="" name="z1" id="z1">
  <input type="hidden" value="" name="z2" id="z2">
  <input type="hidden" value="" name="z3" id="z3">
  <input type="hidden" value="" name="data" id="dC">
</form>
<nav class="navbar navbar-default navbar-fixed-bottom footerColor" role="navigation" style="background: black">
  <div class="container">
    <h4> Developed and Maintained by Team Codethons. Copyright 2014.</h4>
  </div>
</nav><!-- /footer_site_info -->


</body>
</html>
