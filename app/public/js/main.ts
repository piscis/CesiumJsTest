/// <reference path="../../../typings/tsd.d.ts" />

declare var Cesium:any;

window.onload = ()=>{
    console.log('onload');
    var viewer = new Cesium.Viewer('cesiumContainer',{
        animation : false,
        timeline : false
    });


    var redLine = viewer.entities.add({
        name : 'Red line on the surface',
        polyline : {
            positions : Cesium.Cartesian3.fromDegreesArray([48.12, 11.61,
                -125, 35]),
            width : 3,
            material : Cesium.Color.RED
        }
    });
}
