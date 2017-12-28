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
        radius = 3,
        spawnRad = 200,

        numNodes = 2000,            // total number of nodes
        numClusters = 7,            // number of  clusters

        color = d3.scale.category10().domain(d3.range(numClusters));

    // The largest node for each cluster.
    var clusters = [
        { cluster: 0, radius: clusterRad, x: Math.cos(cluster / numClusters * 2 * Math.PI) * spawnRad + width / 2, y: Math.sin(cluster / numClusters * 2 * Math.PI) * spawnRad + height / 2},
        { cluster: 1, radius: clusterRad, x: Math.cos(cluster / numClusters * 2 * Math.PI) * spawnRad + width / 2, y: Math.sin(cluster / numClusters * 2 * Math.PI) * spawnRad + height / 2},
        { cluster: 2, radius: clusterRad, x: Math.cos(cluster / numClusters * 2 * Math.PI) * spawnRad + width / 2, y: Math.sin(cluster / numClusters * 2 * Math.PI) * spawnRad + height / 2},
        { cluster: 3, radius: clusterRad, x: Math.cos(cluster / numClusters * 2 * Math.PI) * spawnRad + width / 2, y: Math.sin(cluster / numClusters * 2 * Math.PI) * spawnRad + height / 2},
        { cluster: 4, radius: clusterRad, x: Math.cos(cluster / numClusters * 2 * Math.PI) * spawnRad + width / 2, y: Math.sin(cluster / numClusters * 2 * Math.PI) * spawnRad + height / 2},
        { cluster: 5, radius: clusterRad, x: Math.cos(cluster / numClusters * 2 * Math.PI) * spawnRad + width / 2, y: Math.sin(cluster / numClusters * 2 * Math.PI) * spawnRad + height / 2},
        { cluster: 6, radius: clusterRad, x: Math.cos(cluster / numClusters * 2 * Math.PI) * spawnRad + width / 2, y: Math.sin(cluster / numClusters * 2 * Math.PI) * spawnRad + height / 2}
    ];

    var nodes = d3.range(numNodes).map(function () {
        var i = Math.floor(Math.random() * numClusters),
            r = radius,
            d = {
                cluster: i,
                radius: r,
                time: 5,
                x: Math.cos(i / numClusters * 2 * Math.PI) * (spawnRad+200) + width / 2 + Math.random(),
                y: Math.sin(i / numClusters * 2 * Math.PI) * (spawnRad+200) + height / 2 + Math.random()
            };
        return d;
    });

    var force1 = d3.layout.force()
        .nodes(nodes)
        .size([width, height])
        .charge(0)
        .on("tick", tick)
        .start();

    var force2 = d3.layout.force()
        .nodes(clusters)
        .size([width, height])
        .charge(0)
        .on("tick", tick)
        .start();

    var svg = d3.select("body").append("svg")
        .attr("width", width)
        .attr("height", height);

    var node = svg.selectAll("node")
        .data(nodes)
        .enter().append("circle")
        .style("fill", function (d) { return color(d.cluster); });

    var cluster1 = svg.selectAll("cluster1")
        .data(clusters)
        .enter().append("circle")
        .style("fill", function (d) { return color(d.cluster); });

    node.transition()
        .duration(750)
        .attrTween("r", function (d) {
            var i = d3.interpolate(0, d.radius);
            return function (t) { return d.radius = i(t); };
        });

    cluster1.transition()
        .duration(750)
        .attrTween("r", function (d) {
            var i = d3.interpolate(0, d.radius);
            return function (t) { return d.radius = i(t); };
        });

    function tick(e) {
        node
            .each(cluster(e.alpha * e.alpha))
            .each(collide(.5))
            .attr("cx", function (d) { return d.x; })
            .attr("cy", function (d) { return d.y; });

        cluster1
            .attr("cx", function (d) { return d.x; })
            .attr("cy", function (d) { return d.y; });
    }

    // Move d to be adjacent to the cluster node.
    function cluster(alpha) {
        return function (d) {
            var cluster = clusters[d.cluster];
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
        quadtree.add(clusters[0]);
        quadtree.add(clusters[1]);
        quadtree.add(clusters[2]);
        quadtree.add(clusters[3]);
        quadtree.add(clusters[4]);
        quadtree.add(clusters[5]);
        quadtree.add(clusters[6]);
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
                        if (quad.point != clusters[d.cluster]) {    //If the quad point is a cluster node, it doesn't feel any force
                            quad.point.x += x;
                            quad.point.y += y;
                        }
                    }
                }
                return x1 > nx2 || x2 < nx1 || y1 > ny2 || y2 < ny1;
            });
        };
    }

</script>