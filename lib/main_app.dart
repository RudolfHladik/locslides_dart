// Copyright (c) 2015, <your name>. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

import 'dart:html';
import 'dart:async';
import 'package:polymer/polymer.dart';
//import 'package:google_maps/google_maps.dart';
//import 'package:web_components/web_components.dart';
import 'dart:convert';
import 'package:paper_elements/paper_button.dart';
import 'package:paper_elements/paper_fab.dart';

class Pic{
  String title;
  String description;
  String path;


}
/// A Polymer `<main-app>` element.
@CustomTag('main-app')
class MainApp extends PolymerElement {
  @observable String reversed = '';
  @observable int count = 0;
  @observable int selected = 0;
  @observable int zoomLvl = 3;
  @observable int slideSelected = 0 ;


 var testSlides = getSlides();
  var slides = ["blue" , "red", "green" ];




  bool play = false;
  var delay = const Duration(seconds:3);
  /// Constructor used to create instance of MainApp.
  MainApp.created() : super.created();








  void changePage(event, detail, target) {
    Timer slideShow = new Timer.periodic(delay, (Timer t) {
      if(play){
        if(slideSelected < slides.length){
          slideSelected++;
          print(slideSelected);
        }else{
          slideSelected = 0;
          print(slideSelected);
        }

      }else {
        t.cancel();
      }

    });


    switch(target.id){
      case "btn_home": selected = 0;

                      break;
      case "btn_projects": selected = 1;
                      break;
      case "btn_tools": selected = 2;
                      break;
      case "btn_about": selected = 3;
                       break;
      case "back": slideSelected > 0 ? slideSelected-- : slideSelected = slides.length;
                    print(slideSelected);
                    break;
      case "play":  if(!play){
                        play = true;
                        slideShow;
                        print(" playing slideShow ");
                      }else{
                        play = false;
                      }


                    break;
      case "next": slideSelected < slides.length ?  slideSelected++ : slideSelected = 0;
                     print(slideSelected);
                     break;
      default: selected = 0;
        break;

    }
  }






  // Optional lifecycle methods - uncomment if needed.

//  /// Called when an instance of main-app is inserted into the DOM.
  attached() {
    super.attached();
    loadJson();
    loadSlideShow();
//    print(testSlides['pic'][0]);




//    PaperButton p = new Element.tag('paper-button');
//    app.appendHtml('<paper-button class="mynewbtn"></paper-botton>');
//    app.children.add(p);
  }

//  /// Called when an instance of main-app is removed from the DOM.
//  detached() {
//    super.detached();
//  }

//  /// Called when an attribute (such as a class) of an instance of
//  /// main-app is added, changed, or removed.
//  attributeChanged(String name, String oldValue, String newValue) {
//    super.attributeChanges(name, oldValue, newValue);
//  }

//  /// Called when main-app has been fully prepared (Shadow DOM created,
//  /// property observers set up, event listeners attached).
  ready() {
    super.ready();


  }
}

getSlides(){

}



void loadSlideShow() {

  List<Pic> slides = new List<Pic>();

  HttpRequest.getString('photos.json').then((String jsonData){
    final data = JSON.decode(jsonData);
    for(var i = 0; i < data['pic'].length; i++){

      Pic pic = new Pic();
      pic
        ..title = data['pic'][i]['title']
        ..description = data['pic'][i]['desc']
        ..path = data['pic'][i]['filename'];
      slides.add(pic);

    }

    for( var slide in slides ){
      var pages = querySelector('main-app::shadow #slideShow')
        ..appendHtml('<section><div id="${slide.title}" class="back" fit style="background-image: url(images/slides/${slide.path})"></div></section>');


      var page = querySelector('main-app::shadow #slideShow #${slide.title}');
      print(page);
//      DivElement background = new Element.div();
//      background
//        ..setAttribute('fit', '')
//        ..className = 'background_image';
      DivElement desc = new Element.div();
      desc
        ..className = 'desc';

      var title = new Element.tag('h3');
      title.text = '${slide.title}';
      var description = new Element.p();
      description.text = '${slide.description}';

      page
//        ..children.add(background)
        ..children.add(desc);
      querySelector('main-app::shadow #${slide.title} .desc')
        ..children.add(title)
        ..children.add(description);

    }
//    for(var slide in slides){


//      PaperFab back = new PaperFab();
//      back
//        ..className = 'move'
//        ..id = 'back'
//        ..mini = true;
//        ..onClick.listen(changeSlide);


//    }

  });





}

void loadJson(){


  HttpRequest.getString('data.json').then((String jsonData){
    final data = JSON.decode(jsonData);

    for (int i = 0 ; i < data['persons'].length; i++ ) {
      final name = data['persons'][i]['name'];
      final birth = data['persons'][i]['birthPlace'];
      final age = data['persons'][i]['age'];
      final lat = data['persons'][i]['map']['lat'];
      final long = data['persons'][i]['map']['long'];
      final photo = data['persons'][i]['photo'];
      var region =  querySelector('main-app::shadow .region');
      var worldMap = querySelector('main-app::shadow google-map');
      DivElement circle = new Element.tag('div')
        ..id = "${name}"
        ..style.backgroundImage = "url('images/faces/${photo}')"
        ..style.backgroundSize = '100% 100%'
        ..style.backgroundRepeat = 'no-repeat';
      worldMap.appendHtml(' <google-map-marker latitude="${lat}" longitude="${long}" title="${name}"></google-map-marker>');
      if((i & 1) == 0 ){
        // i is even
        circle.className = "circle_";
        circle.appendHtml(' <paper-ripple class="circle recenteringTouch" fit></paper-ripple> ');

      }else{
        // i is odd
        circle.className = "circle_dif";
        circle.appendHtml(' <paper-ripple class="circle recenteringTouch" fit></paper-ripple> ');

      }

      region.children.add(circle);

      print('  name: ${name} born in: ${birth}  age: ${age} lat: ${lat} long: ${long}   ');


//    for (var persons in data['persons']) {
//      final name = persons['name'];
//      final birth = persons['birthPlace'];
//      final age = persons['age'];
//      final lat = persons['map']['lat'];
//      final long = persons['map']['long'];

    }
  });
}




