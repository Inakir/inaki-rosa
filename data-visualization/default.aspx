<!DOCTYPE html>
<meta charset="utf-8">
<body>
<!--Thanks to https://bl.ocks.org/mbostock/7881887 -->

<script src="//d3js.org/d3.v3.min.js"></script>
<script src="/js/jquery-1.11.3.min.js"></script>
<script src="/js/bootstrap.min.js"></script>
<script src="/js/modernizr.min.js"></script>
<script src="/js/jquery.easing.1.3.js"></script>
<script src="/js/jquery.scrollUp.min.js"></script>
<script src="/js/jquery.easypiechart.js"></script>
<script src="/js/jquery.countTo.js"></script>
<script src="/js/isotope.pkgd.min.js"></script>
<!--<script src="js/jflickrfeed.min.js"></script>-->
<script src="/js/jquery.fitvids.js"></script>
<script src="/js/jquery.stellar.min.js"></script>
<script src="/js/jquery.waypoints.min.js"></script>
<script src="/js/wow.min.js"></script>
<script src="/js/jquery.nav.js"></script>
<script src="/js/imagesloaded.pkgd.min.js"></script>
<script src="/js/smooth-scroll.min.js"></script>
<script src="/js/jquery.magnific-popup.min.js"></script>
<script src="/js/jquery.sliderPro.min.js"></script>
<script src="/js/owl.carousel.min.js"></script>
<script src="/js/custom.js"></script>

<script>

    var width = $(window).width(),
        height = $(window).height(),
        padding = 5,                     // separation between same-color nodes
        clusterPadding = 60,             // separation between different-color nodes
        clusterRad = 20,
        radius = 5;

    var numNodes = 1000, // total number of nodes
        numClusters = 7; // number of  clusters

    var color = d3.scale.category10()
        .domain(d3.range(numClusters));

    // The largest node for each cluster.
    var clusters = new Array(numClusters);

    var nodes = d3.range(numNodes).map(function () {
        var i = Math.floor(Math.random() * numClusters),
            r = radius,
            d = {
                cluster: i,
                radius: r,
                x: Math.cos(i / numClusters * 2 * Math.PI) * numNodes + width / 2 + Math.random(),
                y: Math.sin(i / numClusters * 2 * Math.PI) * numNodes + height / 2 + Math.random()
            };
        if (!clusters[i] || (r > clusters[i].radius)) {
            d.radius = clusterRad;
            clusters[i] = d;
        }
        return d;
    });

    var force = d3.layout.force()
        .nodes(nodes)
        .size([width, height])
        .gravity(.03)
        .charge(0)
        .on("tick", tick)
        .start();

    var svg = d3.select("body").append("svg")
        .attr("width", width)
        .attr("height", height);

    var node = svg.selectAll("circle")
        .data(nodes)
        .enter().append("circle")
        .style("fill", function (d) { return color(d.cluster); });

    node.transition()
        .duration(750)
        .delay(function (d, i) { return i * numClusters; })
        .attrTween("r", function (d) {
            var i = d3.interpolate(0, d.radius);
            return function (t) { return d.radius = i(t); };
        });

    function tick(e) {
        node
            .each(cluster(10 * e.alpha * e.alpha))
            .each(collide(.5))
            .attr("cx", function (d) { return d.x; })
            .attr("cy", function (d) { return d.y; });
    }

    // Move d to be adjacent to the cluster node.
    function cluster(alpha) {
        return function (d) {
            var cluster = clusters[d.cluster];
            if (cluster === d) return;
            var x = d.x - cluster.x,
                y = d.y - cluster.y,
                l = Math.sqrt(x * x + y * y),
                r = d.radius + cluster.radius;
            if (l != r) {
                l = (l - r) / l * alpha;
                d.x -= x *= l;
                d.y -= y *= l;
                cluster.x += x;
                cluster.y += y;
            }
        };
    }

    // Resolves collisions between d and all other circles.
    function collide(alpha) {
        var quadtree = d3.geom.quadtree(nodes);
        return function (d) {
            var r = d.radius + radius + Math.max(padding, clusterPadding),
                nx1 = d.x - r,
                nx2 = d.x + r,
                ny1 = d.y - r,
                ny2 = d.y + r;
            quadtree.visit(function (quad, x1, y1, x2, y2) {
                if (quad.point && (quad.point !== d)) {
                    var x = d.x - quad.point.x,
                        y = d.y - quad.point.y,
                        l = Math.sqrt(x * x + y * y),
                        r = d.radius + quad.point.radius + (d.cluster === quad.point.cluster ? padding : clusterPadding);
                    if (l < r) {
                        l = (l - r) / l * alpha;
                        d.x -= x *= l;
                        d.y -= y *= l;
                        quad.point.x += x;
                        quad.point.y += y;
                    }
                }
                return x1 > nx2 || x2 < nx1 || y1 > ny2 || y2 < ny1;
            });
        };
    }

</script>