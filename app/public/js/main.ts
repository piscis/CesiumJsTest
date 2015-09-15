/// <reference path="../../../typings/tsd.d.ts" />

declare var Cesium:any;

window.onload = ()=>{
    console.log('onload');
    var viewer = new Cesium.Viewer('cesiumContainer');
}
