#' Quick mapbox mapping
#' \code{mapbox} uses ggmap to plot a mapbox static map
#'
#' @param center a latitude and longitude vector c(lat,lng)
#' @param mapbox the mapbox map to display, default to example from mapbox
#' @param ... arguments for ggmap and arguments for get_mapboxmap
#' @return a ggmap object
#' @seealso \code{\link{ggmap}}
#' @examples
#' \dontrun{
#' getmap(c(-77.04, 38.89))
#' #set the zoom
#' getmap(c(-77.04, 38.89),zoom=14)
#' #setmapbox map
#' getmap(c(-77.04, 38.89),mapbox="mapbox.light")
#' #set extent for ggmap
#' getmap(c(-77.04, 38.89),mapbox="mapbox.light",extent='devise')
#' getmap(c(-77.04, 38.89),mapbox="mapbox.light")
#' }
mapbox = function(center=c(-77.04,38.89),mapbox='mapbox.light',...) {
  map_png(getmapbox_map(center,mapbox,...),...)
}
