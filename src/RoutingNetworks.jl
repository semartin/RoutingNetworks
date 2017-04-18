__precompile__(false)

module RoutingNetworks

using LightGraphs, SFML, NearestNeighbors, Colors
import JLD, LibExpat

#main
export Node, Road, Network

#creation
export osm2network, subsetNetwork, removeNodes, singleNodes, inPolygon, roadTypeSubset
export stronglyConnected, intersections, queryOsmBox, queryOsmPolygon, updateProjection!
export loadTemplate, saveTemplate, isTemplate
export rectNetwork, squareNetwork, urbanNetwork

#routing
export RoutingPaths, roadDistances, getPathTimes, getPath, getPathEdges, shortestPaths!
export pathTime, pathEdgesTime, getPathWithTimes, longestPathTime
export parallelShortestPaths!, traveltime, pathRoads
export roadTypeRouting, randomTimeRouting, fixedSpeedTimes, maxSpeedTimes, uniformTimes, randomTimes
export allPairTimes

#visualization
export NetworkVisualizer, NetworkViz, RoutingViz
export visualize, visualInit, visualEvent, visualUpdate, visualRedraw, copyVisualData, redraw!
export VizColors, RoutingColors, RoadTypeColors, FadedColors, SpeedColors, RelativeSpeedColors

# projection onto network
export NetworkProjector, NetworkPosition, NodeProjector, NodePosition, x, y, lat, lon, node, distToNode
#tools
export boundingBox, distanceGeo, distanceCoord, pointInsidePolygon, toENU, nRoads, nNodes

include("network.jl")

include("networkposition.jl")

include("tools/geometry.jl")
include("tools/geodesy.jl")
include("tools/osmparser.jl")

include("creation/osm2network.jl")
include("creation/query.jl")
include("creation/subsets.jl")
include("creation/templates.jl")
include("creation/rect.jl")
include("creation/urban.jl")

include("routing/routingpaths.jl")
include("routing/shortestpaths.jl")
include("routing/tools.jl")
include("routing/virtualtimes.jl")

include("visualization/vizcolors.jl")
include("visualization/visualize.jl")
include("visualization/networkviz.jl")
include("visualization/routingviz.jl")


end
