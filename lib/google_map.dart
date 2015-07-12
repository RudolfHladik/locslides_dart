// DO NOT EDIT: auto-generated with `pub run custom_element_apigen:update`

/// Dart API for the polymer element `google_map`.
@HtmlImport('google_map_nodart.html')
library locslides_dart.google_map;

import 'dart:html';
import 'dart:js' show JsArray, JsObject;
import 'package:web_components/web_components.dart';
import 'package:polymer_interop/polymer_interop.dart';
import 'google_maps_api.dart';

/// The `google-map-marker` element represents a map marker. It is used as a
/// child of `google-map`.
///
/// <b>Example</b>:
///
///     <google-map latitude="37.77493" longitude="-122.41942">
///       <google-map-marker latitude="37.779" longitude="-122.3892"
///           title="Go Giants!"></google-map-marker>
///     </google-map>
///
/// <b>Example</b> - marker with info window (children create the window content):
///
///     <google-map-marker latitude="37.77493" longitude="-122.41942">
///       <img src="image.png">
///     </google-map-marker>
///
/// <b>Example</b> - a draggable marker:
///
///     <google-map-marker latitude="37.77493" longitude="-122.41942"
///          draggable="true"></google-map-marker>
///
/// <b>Example</b> - hide a marker:
///
///     <google-map-marker latitude="37.77493" longitude="-122.41942"
///         hidden></google-map-marker>
@CustomElementProxy('google-map-marker')
class GoogleMapMarker extends HtmlElement with CustomElementProxyMixin, PolymerProxyMixin {
  GoogleMapMarker.created() : super.created();
  factory GoogleMapMarker() => new Element.tag('google-map-marker');

  /// When true, marker *click events are automatically registered.
  bool get clickEvents => jsElement[r'clickEvents'];
  set clickEvents(bool value) { jsElement[r'clickEvents'] = value; }

  /// Image URL for the marker icon.
  get icon => jsElement[r'icon'];
  set icon(value) { jsElement[r'icon'] = (value is Map || value is Iterable) ? new JsObject.jsify(value) : value;}

  /// When true, marker mouse* events are automatically registered.
  bool get mouseEvents => jsElement[r'mouseEvents'];
  set mouseEvents(bool value) { jsElement[r'mouseEvents'] = value; }

  /// Z-index for the marker icon.
  num get zIndex => jsElement[r'zIndex'];
  set zIndex(num value) { jsElement[r'zIndex'] = value; }

  /// A Google Maps marker object.
  get marker => jsElement[r'marker'];
  set marker(value) { jsElement[r'marker'] = (value is Map || value is Iterable) ? new JsObject.jsify(value) : value;}

  /// The Google map object.
  get map => jsElement[r'map'];
  set map(value) { jsElement[r'map'] = (value is Map || value is Iterable) ? new JsObject.jsify(value) : value;}

  /// A Google Map Infowindow object.
  get info => jsElement[r'info'];
  set info(value) { jsElement[r'info'] = (value is Map || value is Iterable) ? new JsObject.jsify(value) : value;}

  /// The marker's longitude coordinate.
  num get longitude => jsElement[r'longitude'];
  set longitude(num value) { jsElement[r'longitude'] = value; }

  /// The marker's latitude coordinate.
  num get latitude => jsElement[r'latitude'];
  set latitude(num value) { jsElement[r'latitude'] = value; }
}



/// The `google-map` element renders a Google Map.
///
/// <b>Example</b>:
///
///     <style>
///       google-map {
///         height: 600px;
///       }
///     </style>
///     <google-map latitude="37.77493" longitude="-122.41942"></google-map>
///
/// <b>Example</b> - add markers to the map and ensure they're in view:
///
///     <google-map latitude="37.77493" longitude="-122.41942" fitToMarkers>
///       <google-map-marker latitude="37.779" longitude="-122.3892"
///           draggable="true" title="Go Giants!"></google-map-marker>
///       <google-map-marker latitude="37.777" longitude="-122.38911"></google-map-marker>
///     </google-map>
///
/// <b>Example</b>:
///
///     <google-map disableDefaultUI showCenterMarker zoom="15"></google-map>
///     <script>
///       var map = document.querySelector('google-map');
///       map.latitude = 37.77493;
///       map.longitude = -122.41942;
///       map.addEventListener('google-map-ready', function(e) {
///         alert('Map loaded!');
///       });
///     </script>
///
/// <b>Example</b> - with Google directions, using data-binding inside another Polymer element
///
///     <google-map map="{{map}}"></google-map>
///     <google-map-directions map="{{map}}"
///         startAddress="San Francisco" endAddress="Mountain View">
///     </google-map-directions>
///
/// <b>Example</b> - not all map options are included as attributes out of the box.
/// To add custom map options, you can extend this element:
///
///     <polymer-element name="my-google-map" extends="google-map">
///       <script>
///         Polymer({
///
///           getMapOptions: function() {
///             var mapOptions = this.super();
///             mapOptions["streetViewControl"] = false;
///             return mapOptions;
///           }
///
///         });
///       </script>
///     </polymer-element>
@CustomElementProxy('google-map')
class GoogleMap extends HtmlElement with CustomElementProxyMixin, PolymerProxyMixin {
  GoogleMap.created() : super.created();
  factory GoogleMap() => new Element.tag('google-map');

  /// A Maps API key. To obtain an API key, see developers.google.com/maps/documentation/javascript/tutorial#api_key.
  String get apiKey => jsElement[r'apiKey'];
  set apiKey(String value) { jsElement[r'apiKey'] = value; }

  /// A Maps API for Business Client ID. To obtain a Maps API for Business Client ID, see developers.google.com/maps/documentation/business/.
  /// If set, a Client ID will take precedence over an API Key.
  String get clientId => jsElement[r'clientId'];
  set clientId(String value) { jsElement[r'clientId'] = value; }

  /// A latitude to center the map on.
  num get latitude => jsElement[r'latitude'];
  set latitude(num value) { jsElement[r'latitude'] = value; }

  /// A longitude to center the map on.
  num get longitude => jsElement[r'longitude'];
  set longitude(num value) { jsElement[r'longitude'] = value; }

  /// A zoom level to set the map to.
  num get zoom => jsElement[r'zoom'];
  set zoom(num value) { jsElement[r'zoom'] = value; }

  /// When set, prevents the map from tilting (when the zoom level and viewport supports it).
  bool get noAutoTilt => jsElement[r'noAutoTilt'];
  set noAutoTilt(bool value) { jsElement[r'noAutoTilt'] = value; }

  /// When set, displays a map marker at the center point.
  bool get showCenterMarker => jsElement[r'showCenterMarker'];
  set showCenterMarker(bool value) { jsElement[r'showCenterMarker'] = value; }

  /// Version of the Google Maps API to use.
  String get version => jsElement[r'version'];
  set version(String value) { jsElement[r'version'] = value; }

  get map => jsElement[r'map'];
  set map(value) { jsElement[r'map'] = (value is Map || value is Iterable) ? new JsObject.jsify(value) : value;}

  /// Map type to display. One of 'roadmap', 'satellite', 'hybrid', 'terrain'.
  String get mapType => jsElement[r'mapType'];
  set mapType(String value) { jsElement[r'mapType'] = value; }

  /// If set, removes the map's default UI controls.
  bool get disableDefaultUI => jsElement[r'disableDefaultUI'];
  set disableDefaultUI(bool value) { jsElement[r'disableDefaultUI'] = value; }

  /// If set, the zoom level is set such that all markers (google-map-marker children) are brought into view.
  bool get fitToMarkers => jsElement[r'fitToMarkers'];
  set fitToMarkers(bool value) { jsElement[r'fitToMarkers'] = value; }

  /// If false, prevent the user from zooming the map interactively.
  bool get zoomable => jsElement[r'zoomable'];
  set zoomable(bool value) { jsElement[r'zoomable'] = value; }

  /// If set, custom styles can be applied to the map.
  /// For style documentation see developers.google.com/maps/documentation/javascript/reference#MapTypeStyle
  get styles => jsElement[r'styles'];
  set styles(value) { jsElement[r'styles'] = (value is Map || value is Iterable) ? new JsObject.jsify(value) : value;}

  /// A maximum zoom level which will be displayed on the map.
  num get maxZoom => jsElement[r'maxZoom'];
  set maxZoom(num value) { jsElement[r'maxZoom'] = value; }

  /// A minimum zoom level which will be displayed on the map.
  num get minZoom => jsElement[r'minZoom'];
  set minZoom(num value) { jsElement[r'minZoom'] = value; }

  /// A comma separated list (e.g. "places,geometry") of libraries to load
  /// with this map. Defaults to "places". For more information see
  /// https://developers.google.com/maps/documentation/javascript/libraries.
  String get libraries => jsElement[r'libraries'];
  set libraries(String value) { jsElement[r'libraries'] = value; }

  /// If true, sign-in is enabled.
  /// See https://developers.google.com/maps/documentation/javascript/signedin#enable_sign_in
  bool get signedIn => jsElement[r'signedIn'];
  set signedIn(bool value) { jsElement[r'signedIn'] = value; }

  /// When true, map *click events are automatically registered.
  bool get clickEvents => jsElement[r'clickEvents'];
  set clickEvents(bool value) { jsElement[r'clickEvents'] = value; }

  /// When true, map drag* events are automatically registered.
  bool get dragEvents => jsElement[r'dragEvents'];
  set dragEvents(bool value) { jsElement[r'dragEvents'] = value; }

  /// When true, map mouse* events are automatically registered.
  bool get mouseEvents => jsElement[r'mouseEvents'];
  set mouseEvents(bool value) { jsElement[r'mouseEvents'] = value; }

  /// Returns the an object with the current map configurations. Useful for
  /// overriding in a subclass.
  ///
  /// Returns map configuration.
  getMapOptions() =>
      jsElement.callMethod('getMapOptions', []);

  /// Clears all markers from the map.
  void clear() =>
      jsElement.callMethod('clear', []);

  /// Explicitly resizes the map, updating its center. This is useful if the
  /// map does not show after you have unhidden it.
  void resize() =>
      jsElement.callMethod('resize', []);
}
