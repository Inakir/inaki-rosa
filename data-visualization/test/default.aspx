﻿<!DOCTYPE html>
<meta charset="utf-8">
<!--Thanks to https://gist.github.com/anonymous/00ad9a1bd84f2833447608cd25bf3e51#file-dummydata-csv -->

<link rel="stylesheet" href="/css/data-viz.css" />
<script src="//d3js.org/d3.v4.min.js"></script>
<script src="/js/jquery-1.11.3.min.js"></script>

<body>
    <div id="viz"></div>
    <button id="left"><</button>
    <button id="right">></button>
    <script>
        // get width and height from viz-div
        var divWidth = document.getElementById("viz").clientWidth;
        var divHeight = document.getElementById("viz").clientHeight;
        var height = divHeight;
        var width = divWidth;
        var margin = {top: height*0.1, right: width * 0.08, bottom: height * 0.06, left: width * 0.08};
        width = width - margin.left - margin.right;
        height = height - margin.top - margin.bottom;
        var svg = d3.select("#viz").append("svg")
            .attr("width", width + margin.left + margin.right)
            .attr("height", height + margin.top + margin.bottom)
            .append("g")
            .attr("class", "chart")
            .attr("transform", "translate(" + margin.left + "," + margin.top + ")");
        var background = svg.append("rect")
            .attr("width", width + margin.left + margin.right)
            .attr("height", height + margin.top + margin.bottom)
            .attr("transform", "translate(" + (-margin.left) + "," + (-margin.top) + ")")
            .attr("fill", "white")
        var radius = 2;
        var defaultColor = "black";
        var highlightColor = "magenta";
        var updateDuration = 1500;
        var activeForces = []
        var counter = 0
        var barYactive = false;
        d3.csv("/data-visualization/dummydata.csv", function (error, data) {
            if (error) throw error;
    
            data.forEach(function(d) {
                if (d.roll == "") {
                    d.roll = null
                }
                if (d.inkomstgrupp == "") {
                    d.inkomstgrupp = null
                } else {
                    d.inkomstgrupp = +d.inkomstgrupp
                }
                if (d.kapitalgrupp == "") {
                    d.kapitalgrupp = null
                } else {
                    d.kapitalgrupp = +d.kapitalgrupp
                }
                d.alder = +d.alder
                d.fade = 1
                d.color = defaultColor
        
            })
            /* scales */
            var randomX = d3.scaleLinear()
                .domain([0, 1])
                .range([0, width-radius])
            var randomY = d3.scaleLinear()
                .domain([0, 1])
                .range([0, height-radius])
            /* define and init simulation */
            var simulation = d3.forceSimulation()
            simulation
                .nodes(data)
                .on("tick", ticked);
            initSim()
            /* basic simulation functions */
            function initSim() {
                simulation
                    .force("x", d3.forceX(function(d) {
                        return randomX(Math.random())
                    }))
                    .force("y", d3.forceY(function(d) {
                        return randomY(Math.random())
                    }))
                    .alphaMin(0.5)
                    .stop()
                // loop through simulation ticks to land in a stable state with randomly distributed nodes
                for (var i = 0; i < 100; ++i) simulation.tick()
                activeForces.push("x", "y")
                return simulation
            }
            function baseSim(alphaMin) {
                /* creates basic petri dish of nodes */
        
                removeForces()
                radius = 2
        
                simulation
                    .stop()
                    .force("charge", d3.forceManyBody().strength(-2))
                    .force("x", d3.forceX(width/2).strength(0.12))
                    .force("y", d3.forceY(height/2).strength(0.12))
                    .force("collide", d3.forceCollide(radius))
                    .alphaMin(alphaMin)
                    .alpha(1)
                    .restart()
                activeForces.push("charge", "x", "y", "collide")
        
        
                return simulation
        
            }

            function breakdown(breakdownObjects) {
                /* breaks down nodes into groups centers of gravity defined by x and y functions */
        
                var radius = 2;
                removeForces();
                for (i=0; i<breakdownObjects.length; i++) {
                    switch(breakdownObjects[i]["type"]) {
                
                    case "xy":
                        var customX = d3.forceX(breakdownObjects[i]["breakX"]).strength(breakdownObjects[i]["strengthX"])
                        var customY = d3.forceY(breakdownObjects[i]["breakY"]).strength(breakdownObjects[i]["strengthY"])
                
                
                        simulation
                            .force("x" + i.toString(), customX)
                            .force("y" + i.toString(), customY)
                        activeForces.push("x" + i.toString())
                        activeForces.push("y" + i.toString())
                        break;
                
                    case "charge":
                        var customCharge = isolate(d3.forceManyBody(), breakdownObjects[i]["filter"]).strength(breakdownObjects[i]["strength"])
                        simulation
                            .force("charge" + i.toString(), customCharge)
                        activeForces.push("charge" + i.toString())
                        break;
                    }
                }
                simulation
                    .force("collide", d3.forceCollide(radius))
                    .alpha(1)
                    .alphaMin(0.4)
                    .restart();
                activeForces.push("collide")
        
                return simulation
            };
            function breakout(filterIn, filterOut) {
                /* breakout a selection of nodes by lifting them out from petri dish to a radial circle and fading out the non-selected nodes */
        
                removeForces()
        
                var customRadial = isolate(d3.forceRadial(width * 0.7, width / 2, height / 2), filterOut).strength(0.12);
        
                var customCenter = isolate(d3.forceCenter(width / 2, height / 2), filterIn);
        
                simulation.stop()
                    .force("center", customCenter)
                    .force("radial", customRadial)
                    .force("collide", d3.forceCollide(radius))
                    .alpha(1)
                    .alphaMin(0.6)
                    .restart()
                    .on("end", null)
        
                activeForces.push("center", "radial", "collide")
        
        
                return simulation
        
            };
            var barYaxisDOM; // defined here in order to be accessible for removal by resetForces function
            function barchartY(filterFunction, accessor) {
                /* creates a bar chart on the left hand side from values (not a force function!) */
                removeForces()
        
                var barY = d3.scaleLinear()
                    .domain(d3.extent(data.filter(filterFunction), function(d) {
                        return +accessor(d) }))
                    .range([height, 0])
        
                var barYaxis = d3.axisLeft(barY);
        
                var xValObj = {}
        
                simulation.stop();
        
                radius = 2;
                if (width > height) {
                    var radiusMulti = 4
                } else {
                    var radiusMulti = 2
                }
                circles
                    .transition()
                    .duration(1500)
                    .attr("opacity", function(d) { return d.fade })
                    .attr("fill", function(d) { return d.color; })
                    .attr("cy", function(d) {
                        var y = barY(+accessor(d));
                        // manually update d.x to let simulation know x has changed
                        d.y = y;
                        return d.y;
                    })
                    .attr("cx", function(d) {
                        if (xValObj[accessor(d)]) {
                            var x = ((xValObj[accessor(d)] += 1) * (radius * radiusMulti));
                            // manually update d.x to let simulation know x has changed
                            d.x = x
                            return x
                        } else {
                            var x = ((xValObj[accessor(d)] = 1) * (radius * radiusMulti));
                            d.x = x
                            return x
                        }
                    });
        
                barYaxisDOM = svg.append("g")
                    .attr("class", "y-axis")
                    .call(barYaxis)
        
                barYactive = true;
            };
            /* simulation functions specific for dataset */
            function splitSexes() {
                var xFunction = function(d) {
                    var boyBool = d.kon == "man"
            
                    return boyBool ? width / 3 : (width / 3) * 2
                }
                var yFunction = function(d) { return height/2; }
                var breakdownObjs = [{"type": "xy", "breakX": xFunction, "strengthX": 0.15, "breakY": yFunction, "strengthY": 0.15}, {"type": "charge", "filter": function(d) { return d; },"strength": -1.5}]
        
                breakdown(breakdownObjs)
            }
            function age() {
                var filterFunction = function(d) {
                    return d.alder != null
                }
                var accessor = function(d) {
                    return d.alder
                }
                barchartY(filterFunction, accessor)
            }
            function breakoutIncome() {
                var filterIn = function(d) { return d.inkomstgrupp != null }
                var filterOut = function(d) { return d.inkomstgrupp == null }
        
                breakout(filterIn, filterOut)
        
            }
            function incomeGroup() {
        
                var xFunction = function(d) {
                    return d.inkomstgrupp != null ? (width / 2) : d.x
                };
                var yFunction = function(d) {
                    var yScale = d3.scaleLinear()
                        .domain(d3.extent(data, function(p) { return p.inkomstgrupp; }))
                        .range([height-75, 0+75])
                    return d.inkomstgrupp != null ? yScale(d.inkomstgrupp) : d.y
                };
                var xyBreakdown = {"type": "xy", "breakX": xFunction, "filterX": function(d) { return d; }, "strengthX": 0.24, "breakY": yFunction, "filterY": function(d) { return d; }, "strengthY": 0.18}
                var chargeBreakdown = {"type": "charge", "filter": function(d) { return d.inkomstgrupp != null; }, "strength": -1.5}
        
                var chargeBreakdownNull = {"type": "charge", "filter": function(d) { return d.inkomstgrupp == null; }, "strength": -1.5}
        
                return breakdown([xyBreakdown, chargeBreakdown, chargeBreakdownNull])
            }
            function capitalGroup() {
                var xFunction = function(d) {
                    return d.kapitalgrupp != null ? (width / 2) : d.x
                };
                var yFunction = function(d) {
                    var yScale = d3.scaleLinear()
                        .domain(d3.extent(data, function(p) { return p.kapitalgrupp; }))
                        .range([height-75, 0+75])
                    return d.kapitalgrupp != null ? yScale(d.kapitalgrupp) : d.y
                };
        
                var xyBreakdown = {"type": "xy", "breakX": xFunction, "filterX": function(d) { return d; }, "strengthX": 0.24, "breakY": yFunction, "filterY": function(d) { return d; }, "strengthY": 0.18}
                var chargeBreakdown = {"type": "charge", "filter": function(d) {
                    return d.kapitalgrupp != null; }, "strength": -1.5}
        
                var chargeBreakdownNull = {"type": "charge", "filter": function(d) { return d.kapitalgrupp == null; }, "strength": -1.5}
        
                breakdown([xyBreakdown, chargeBreakdown, chargeBreakdownNull])
        
            }
            function moss() {
                var xFunction = function(d) {
                    var boyBool = d.batchkod != "M"
                    return boyBool ? width / 3 : (width / 3) * 2
                }
                var yFunction = function(d) { return height/2; }
                var breakdownObjs = [{"type": "xy", "breakX": xFunction, "strengthX": 0.15, "breakY": yFunction, "strengthY": 0.15}, {"type": "charge", "filter": function(d) { return d; }, "strength": -1.5}]
                return breakdown(breakdownObjs)
            }
            function role() {
                // title.text("Roll")
                var xFunction = function(d) {
                    return d.roll != null ? width / 2 : d.x
                };
                var yFunction = function(d) {
                    var yScale = d3.scaleBand()
                        .domain(['L', 'Sec', 'D', 'S'])
                        .range([height, 0+100])
                    return d.roll != null ? yScale(d.roll) : d.y;
                };
                var xyBreakdown = {"type": "xy", "breakX": xFunction, "filterX": function(d) { return d; }, "strengthX": 0.3, "breakY": yFunction, "filterY": function(d) { return d; }, "strengthY": 0.2}
                var chargeBreakdown = {"type": "charge", "filter": function(d) { return d.roll != null; }, "strength": -1.5}
        
                var chargeBreakdownNull = {"type": "charge", "filter": function(d) { return d.roll == null; }, "strength": -1.5}
        
        
                breakdown([xyBreakdown, chargeBreakdown, chargeBreakdownNull])
        
            }
            function kvar() {
                var filterIn = function(d) { return d.land == "Sverige" }
                var filterOut = function(d) { return d.land != "Sverige" }
        
                breakout(filterIn, filterOut).on("end", function() {
                    var xFunction = function(d) {
                        return d.land == "Sverige" ? width / 2 : d.x;
                    };
                    var yFunction = function(d) {
                        return d.land == "Sverige" ? height/2 : d.y;
                    };
                    var xyBreakdown = {"type": "xy", "breakX": xFunction, "filterX": function(d) { return d; },  "strengthX": 0.1, "breakY": yFunction, "filterY": function(d) { return d; }, "strengthY": 0.1};
                    var chargeBreakdown = {"type": "charge", "filter": function(d) { return d.land == "Sverige"; }, "strength": -1.5};
            
                    breakdown([xyBreakdown, chargeBreakdown])
                })
        
            }
            /* helper functions */
            function highlight(filterFunction) {
                data.forEach(function(d) {
                    d.color = filterFunction(d) ? highlightColor : defaultColor
                })                    
            }
            function fade(filterFunction) {
                data.forEach(function(d) {
                    d.fade = filterFunction(d) ? 0 : 1
                })
            }
    
            function removeForces() {
                if (barYactive) {
                    barYaxisDOM.remove()
                    barYactive = false;
                }
        
                for (i=0; i<activeForces.length; i++) {
                    simulation
                        .force(activeForces[i], null)
                }
                activeForces = []
                simulation
                    .on("end", null);
            };
            function updateNodes() {
                circles
                    .transition()
                    .duration(updateDuration)
                    .attr("opacity", function(d) {
                        return d.fade
                    })
                    .attr("fill", function(d) {
                        return d.color
                    })
            }
            // from https://bl.ocks.org/mbostock/b1f0ee970299756bc12d60aedf53c13b
            function isolate(force, filter) {
                var initialize = force.initialize;
                force.initialize = function() { initialize.call(force, data.filter(filter)); };
                return force;
            };
            function ticked() {
                circles
                    .attr("cx", function(d) { return d.x; })
                    .attr("cy", function(d) { return d.y; })
            };
            // draw circles
            var circles = svg.append("g")
                .attr("class", "circles")
                .selectAll("circle")
                .data(data)
                .enter()
                .append("circle")
                .attr("r", radius)
                .attr("opacity", 0.2)
                .attr("cx", function(d) { return d.x; })
                .attr("cy", function(d) { return d.y; })
                .attr("fill", function(d) {
                    d.color = defaultColor
                    return d.color
                })
            // .on("mouseover", function(d) {
            //     // console.log(d.kapitalgrupp)
            // })
            // define trigger functions
            var triggerState;
            window._trigger1 = function() {
                highlight(function(d) { return false })
                fade(function(d) { return false })
                if (triggerState != "base") {
                    baseSim(0.1)
                    updateNodes()
                    triggerState = "base"
                }
        
            }
            window._trigger2 = function() {
                highlight(function(d) { return d.kon == "kvinna"; })
                fade(function(d) { return false })
                if (triggerState != "sexes") {
                    splitSexes()
                    triggerState = "sexes"
                }
                updateNodes()
            }
            window._trigger3 = function() {
                highlight(function(d) { return false; })
                fade(function(d) { return false; })
                if (triggerState != "age") {
                    updateNodes()
                    baseSim(0.7).on("end", function() {
                        age()
                    })
                } else {
                    age()
                }
                triggerState = "age"
            }
            window._trigger4 = function() {
                highlight(function(d) { return d.alder >= 50; })
                fade(function(d) { return false })
                if (triggerState != "age") {
                    triggerState = "age"
                }
                age()
            }
            window._trigger5 = function() {
                highlight(function(d) { return d.alder <= 18; })
                fade(function(d) { return false })
                if (triggerState != "age") {
                    triggerState = "age"
                }
                age()
            }
            window._trigger6 = function() {
                var filterOut = function(d) { return d.inkomstgrupp == null }
                highlight(filterOut)
                fade(function(d) { return false })
                if (triggerState != "base") {
                    baseSim(0.6)
                    triggerState = "base"
                }
                updateNodes()
            }
            window._trigger7 = function() {
        
                var filterIn = function(d) { return d.inkomstgrupp != null }
                var filterOut = function(d) { return d.inkomstgrupp == null }
                if (triggerState == "base") {
            
                    highlight(filterOut)
                    fade(filterOut)
                    updateNodes()
            
                    breakout(filterIn, filterOut)
                } else {
                    if (triggerState != "breakout") {
                
                        highlight(filterOut)
                        fade(function(d) { return false })
                        updateNodes()
                
                        baseSim(0.6).on("end", function(d) {
                    
                            highlight(filterOut)
                            fade(filterOut)
                            updateNodes()
                    
                            breakout(filterIn, filterOut)
                        })
                    }
                }
                triggerState = "breakout"
        
            }
            window._trigger8 = function() {
                highlight(function(d) { return d.inkomstgrupp == 0; })
                fade(function(d) { return d.inkomstgrupp == null })
                if (triggerState != "income") {
                    incomeGroup()
                    triggerState = "income"
                }
                updateNodes()
        
            }
            window._trigger9 = function() {
                highlight(function(d) { return d.inkomstgrupp == 1; })
                fade(function(d) { return d.inkomstgrupp == null })
                if (triggerState != "income") {
                    incomeGroup()
                    triggerState = "income"
                }
                updateNodes()
        
            }
            window._trigger10 = function() {
                highlight(function(d) { return d.inkomstgrupp == 2; })
                fade(function(d) { return d.inkomstgrupp == null })
                if (triggerState != "income") {
                    incomeGroup()
                    triggerState = "income"
                }
                updateNodes()
            }
            window._trigger11 = function() {
                highlight(function(d) { return d.inkomstgrupp == 3; })
                fade(function(d) { return d.inkomstgrupp == null })
                if (triggerState != "income") {
                    incomeGroup()
                    triggerState = "income"
                }
                updateNodes()
            }
            window._trigger12 = function() {
                highlight(function(d) { return d.inkomstgrupp == 4; })
                fade(function(d) { return d.inkomstgrupp == null })
                if (triggerState != "income") {
                    incomeGroup()
                    triggerState = "income"
                }
        
                updateNodes()
            }
            window._trigger13 = function() {    
                highlight(function(d) { return d.inkomstgrupp == 4 && d.kon == "kvinna"; })
                fade(function(d) { return d.inkomstgrupp == null })
                if (triggerState != "income") {
                    incomeGroup()
                    triggerState = "income"
                }
        
                updateNodes()
            }
            window._trigger14 = function() {
        
                highlight(function(d) { return d.inkomstgrupp == 5; })
                fade(function(d) { return d.inkomstgrupp == null })
                if (triggerState != "income") {
                    incomeGroup()
                    triggerState = "income"
                }
        
                updateNodes()
            }
            window._trigger15 = function() {
                highlight(function(d) { return d.kapitalgrupp == 1 })
                fade(function(d) { return d.kapitalgrupp == null })
                if (triggerState != "capital") {
                    capitalGroup()
                    triggerState = "capital"
                }
        
                updateNodes()
            }
            window._trigger16 = function() {
        
                highlight(function(d) { return d.kapitalgrupp == 2 })
                fade(function(d) { return d.kapitalgrupp == null })
                if (triggerState != "capital") {
                    capitalGroup()
                    triggerState = "capital"
                }
        
                updateNodes()
            }
            window._trigger17 = function() {
        
                highlight(function(d) { return d.kapitalgrupp == 3 })
                fade(function(d) { return d.kapitalgrupp == null })
                if (triggerState != "capital") {
                    capitalGroup()
                    triggerState = "capital"
                }
        
                updateNodes()
            }
            window._trigger18 = function() {
                counter = 0;
                var filterFunction = function(d) {
                    if (d.kapitalgrupp == 3 && counter < 4) {
                        counter += 1;
                        return true;
                    } else {
                        return false;
                    };
                };
                highlight(filterFunction)
                fade(function(d) { return d.kapitalgrupp == null })
        
                if (triggerState != "capital") {
                    capitalGroup()
                    triggerState = "capital"
                }
                updateNodes()
                counter = 0;
            }
            window._trigger19 = function() {
                highlight(function(d) { return d.kapitalgrupp == 4 })
                fade(function(d) { return d.kapitalgrupp == null })
                if (triggerState != "capital") {
                    capitalGroup()
                    triggerState = "capital"
                }
        
                updateNodes()
            }
            window._trigger20 = function() {
                counter = 0;
                var filterFunction = function(d) {
                    if (d.kapitalgrupp == 4 && counter < 24) {
                        counter += 1;
                        return true;
                    } else {
                        return false;
                    };
                };
                highlight(filterFunction)
                fade(function(d) { return d.kapitalgrupp == null })
        
                if (triggerState != "capital") {
                    capitalGroup()
                    triggerState = "capital"
                }
                updateNodes()
                counter = 0;
            }
            window._trigger21 = function() {
                highlight(function(d) { return d.kapitalgrupp == 5 })
                fade(function(d) { return d.kapitalgrupp == null })
                if (triggerState != "capital") {
                    capitalGroup()
                    triggerState = "capital"
                }
        
                updateNodes()
            }
            window._trigger22 = function() {
                highlight(function(d) { return false; })
                fade(function(d) { return false; })
                if (triggerState != "base") {
                    baseSim(0.6)
                    triggerState = "base"
                }
                updateNodes()
            }
            window._trigger23 = function() {
                highlight(function(d) { return d.batchkod == "M" })
                fade(function(d) { return false; })
                if (triggerState != "moss") {
                    moss()
                    triggerState = "moss"
                }
                updateNodes()
        
            }
            window._trigger24 = function() {
        
                highlight(function(d) { return d.batchkod == "M" })
                fade(function(d) { return false; })
                updateNodes()
                var filterIn = function(d) { return d.roll != null }
                var filterOut = function(d) { return d.roll == null }
                if (triggerState != "role") {
                    fade(filterOut)
                    updateNodes()
                    breakout(filterIn, filterOut).on("end", function() {
                        role()
                    })
                } else {
                    fade(filterOut)
                    updateNodes()
                    role()
                }
                triggerState = "role"
            }
            window._trigger25 = function() {
                highlight(function(d) { return d.roll == "L" })
                fade(function(d) { return d.roll == null })
                updateNodes()
                if (triggerState != "role") {
                    role()
                    triggerState = "role"
                }
            }
            window._trigger26 = function() {
                highlight(function(d) { return d.roll == "Sec" })
                fade(function(d) { return d.roll == null })
                updateNodes()
                if (triggerState != "role") {
                    role()
                    triggerState = "role"
                }
            }
            window._trigger27 = function() {
                highlight(function(d) { return d.roll == "D" })
                fade(function(d) { return d.roll == null })
                updateNodes()
                if (triggerState != "role") {
                    role()
                    triggerState = "role"
                }
            }
            window._trigger28 = function() {
                highlight(function(d) { return d.roll == "S" })
                fade(function(d) { return d.roll == null })
                updateNodes()
                if (triggerState != "role") {
                    role()
                    triggerState = "role"
                }
            }
            window._trigger29 = function() {
                highlight(function(d) { return d.land != "Sverige" })
                fade(function(d) { return false; })
                updateNodes()
                if (triggerState != "base") {
                    baseSim(0.6)
                    triggerState = "base"
                }
            }
            window._trigger30 = function() {
                var filterIn = function(d) { return d.land == "Sverige" }
                var filterOut = function(d) { return d.land != "Sverige" }
                highlight(filterOut)
                updateNodes()
                if (triggerState != "base" && triggerState != "kvar") {
                    fade(function(d) { return false; })
                    baseSim(0.6).on("end", function() {
                        fade(filterOut)
                        updateNodes()
                        breakout(filterIn, filterOut).on("end", function() {
                            kvar()
                        })
                    })
                } else {
                    if (triggerState != "kvar") {
                        fade(filterOut)
                        updateNodes()
                        breakout(filterIn, filterOut).on("end", function() {
                            highlight(filterIn)
                            updateNodes()
                            kvar()
                        })
                    }
                }
                triggerState = "kvar"
            }
            var triggers = [window._trigger1, window._trigger2, window._trigger3, window._trigger4, window._trigger5, window._trigger6, window._trigger7, window._trigger8, window._trigger9, window._trigger10, window._trigger11, window._trigger12, window._trigger13, window._trigger14, window._trigger15, window._trigger16, window._trigger17, window._trigger18, window._trigger19, window._trigger20, window._trigger21, window._trigger22, window._trigger23, window._trigger24, window._trigger25, window._trigger26, window._trigger27, window._trigger28, window._trigger29, window._trigger30]
            var navCount = -1
            d3.select("#left")
                .on("click", function() {
                    navCount -= 1
                    triggers[navCount]()
                    console.log(navCount)
                })
            d3.select("#right")
                .on("click", function() {
                    navCount += 1
                    triggers[navCount]()
                    console.log(navCount)
                })
            // window._vizData = data
            window._triggerRandom = function() {
                triggers[Math.floor(Math.random() * triggers.length)]()
            }
        })
    </script>
</body>
