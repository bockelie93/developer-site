<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="misc" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="sidebar" tagdir="/WEB-INF/tags/sidebars" %>
<!DOCTYPE html>

<html>

<head>
    <misc:contenttype/> <misc:title value="Postal Code API"/> <misc:css_v2/>
</head>

<body>

<div class="wrapper">

<misc:header_v2 selected_tab="developer"/>

<div id="page">
<section id="content">
<div class="row-fluid">

<div class="span9">

    <div class="box">
        <h1>Postal Code API</h1>
    </div>

    <div class="box">
        <h2><a name="introduction"></a>Introduction</h2>

        <p>With the Postal Code API you can look up the location by using the postal code and the country code.</p>
    </div>





    <div class="multitabs">

        <ul class="tab-group">
            <li><a href="#xml" data-tab="xml">XML</a></li>
            <li><a href="#json" data-tab="json">JSON</a></li>
        </ul>

    <div class="box">
        <h2><a name="reference"></a>Reference</h2>

        <pre class="code-box">Request prefix:
http://fraktguide.bring.no/fraktguide</pre>

        <table>
            <thead>
            <tr>
                <th>Field</th>
                <th>Description</th>
            </tr>
            </thead>
            <tbody>
            <tr>
                <td><code>/postalCode.&lt;extension&gt;?country=&lt;country&gt;&amp;&lt;postalcode&gt;</code></td>
                <td>Returns the location based on the postal code.<br/>
                    <li><code>&lt;postalcode&gt;</code> = A valid zip-code</li>
                    <li><code>&lt;extension&gt;</code> = <code>xml</code> or <code>json</code></li>
                    <li><code>&lt;country&gt;</code> = The ISO 3166-1-alpha-2 country code.</li>
                </td>
            </tr>
            <tr >
                <td><code>//Response/@valid</code></td>
                <td>XPath for checking if the response is valid <br/>
                </td>
            </tr>
            </tbody>
        </table>
        <hr>
        <h2><a name="HTU"></a>How to Use</h2>
        You have to specify the postal code and the country code to find the location with this API.<br/><br/> The
        following countries are supported:

        <ul>
            <li><code>NO</code> - Norway</li>
            <li><code>DK</code> - Denmark</li>
            <li><code>SE</code> - Sweden</li>
            <li><code>FI</code> - Finland</li>
            <li><code>NL</code> - Netherlands</li>
            <li><code>DE</code> - Germany</li>
            <li><code>US</code> - United States</li>
            <li><code>BE</code> - Belgium</li>
        </ul>

        <p>The service uses <a target="_blank" href="http://www.geonames.org/">GeoNames</a> as source for all countries
            except Norway.</p>

        <p>For unsupported countries, all postal codes will be marked as valid with no city name returned. In these
            cases it is recommended to prompt the user to input the city name himself/herself.</p><br/>

        To illustrate in a simple matter how to use this API, we provide an example.

        <h4><p>Example: Using the postal code and the country code to lookup the location.</p></h4>

        <div class="codetabs">
                <div data-tab="xml" class="tab">
                    <div class="api-call">
                        <p>Request:</p>
                        <a target="_blank" class="request"
                           href="http://fraktguide.bring.no/fraktguide/api/postalCode.xml?country=no&amp;pnr=1337"
                           data-internal="/proxy/shipping-guide/api/postalCode.xml?country=no&amp;pnr=1337">
                            /api/postalCode.xml?country=no&amp;pnr=1337 </a>
                        <p>Response:</p>
                        <pre class="code-box xml response delay-snippet"></pre>
                    </div>
                </div>
            </div>
        <div class="codetabs">
            <div data-tab="json" class="tab">
                <div class="api-call">
                    <p>Request:</p>
                    <a target="_blank" class="request"
                       href="http://fraktguide.bring.no/fraktguide/api/postalCode.json?country=no&amp;pnr=1337"
                       data-internal="/proxy/shipping-guide/api/postalCode.json?country=no&amp;pnr=1337">
                        /api/postalCode.json?country=no&amp;pnr=1337 </a>

                    <p class="right">JSONP Request: <a
                            href="http://fraktguide.bring.no/fraktguide/api/postalCode.json?country=no&amp;pnr=1337&amp;callbackUrl=functionName">?callback=functionName</a>
                    </p>
                    <p>Response:</p>
                    <pre class="code-box json response delay-snippet"></pre>
                </div>
            </div>
        </div>
        <div class="codetabs">
            <div data-tab="html" class="tab">
                <div class="api-call">
                    <p>The HTML API will return a <code>span</code> element with <code>id="bringPostnumberQueryResult"</code>,
                       the postal name as contents and the <code>class</code> either <code>bringPostnumberQueryValidPostnumber</code>
                       or <code>bringPostnumberQueryInvalidPostnumber</code>.</p><br/>

                    <p>Request:</p>
                    <a target="_blank" class="request"
                       href="http://fraktguide.bring.no/fraktguide/api/postalCode.html?country=no&amp;pnr=1337"
                       data-internal="/proxy/shipping-guide/api/postalCode.html?country=no&amp;pnr=1337">
                        /api/postalCode.html?country=no&amp;pnr=1337 </a>
                    <p>Response:</p>
                    <pre class="code-box html response delay-snippet"></pre>
                </div>
            </div>
        </div>

<hr>
        <h2><a name="additionalExamples"></a>Additional examples</h2>
        <ul class="menu-group collapsing no-shadow">
            <li>
                <a href="#" class="menu-item">Finding the location for postal codes with multiple locations
                    <span class="arrow"></span>
                </a>

                <div class="content-box">
                    <div class="row element-sample">
                        <p>In some countries, such as for example Germany and France, postal codes are non-unique. This
                            means that one postal code might have multiple city names.
                            In these cases the integration APIs (json and xml) will have separate elements containing
                            the list of cities, while the ordinary html response element will remain blank.
                        </p>
                        <div class="codetabs">
                                <div data-tab="xml" class="tab">
                                    <div class="api-call">
                                        <p>Request:</p>
                                        <a target="_blank" class="request"
                                           href="http://fraktguide.bring.no/fraktguide/api/postalCode.xml?country=DE&amp;pnr=99869"
                                           data-internal="/proxy/shipping-guide/api/postalCode.xml?country=DE&amp;pnr=99869">
                                            /api/postalCode.xml?country=DE&amp;pnr=99869 </a>
                                        <p>Response:</p>
                                        <pre class="code-box xml response delay-snippet"></pre>
                                    </div>
                                </div>
                            </div>
                        <div class="codetabs">
                            <div data-tab="json" class="tab">
                                <div class="api-call">
                                    <p>Request:</p>
                                    <a target="_blank" class="request"
                                       href="http://fraktguide.bring.no/fraktguide/api/postalCode.json?country=DE&amp;pnr=99869"
                                       data-internal="/proxy/shipping-guide/api/postalCode.json?country=DE&amp;pnr=99869">
                                        /api/postalCode.json?country=DE&amp;pnr=99869 </a>

                                    <p class="right">JSONP Request: <a
                                            href="http://fraktguide.bring.no/fraktguide/api/postalCode.json?country=DE&amp;pnr=99869&amp;callbackUrl=functionName">?callback=functionName</a>
                                    </p>
                                    <p>Response:</p>
                                    <pre class="code-box json response delay-snippet"></pre>
                                </div>
                            </div>
                        </div>
                        <div class="codetabs">
                            <div data-tab="html" class="tab">
                                <div class="api-call">
                                    <p>The HTML API will return a <code>span</code> element with <code>id="bringPostnumberQueryResult"</code>,
                                       the postal name as contents and the <code>class</code> either <code>bringPostnumberQueryValidPostnumber</code>
                                       or <code>bringPostnumberQueryInvalidPostnumber</code>.</p><br/>

                                    <p>Request:</p>
                                    <a target="_blank" class="request"
                                       href="http://fraktguide.bring.no/fraktguide/api/postalCode.html?country=DE&amp;pnr=99869"
                                       data-internal="/proxy/shipping-guide/api/postalCode.html?country=DE&amp;pnr=99869">
                                        /api/postalCode.html?country=DE&amp;pnr=99869 </a>
                                    <p>Response:</p>
                                    <pre class="code-box html response delay-snippet"></pre>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </li>
        </ul>
    </div>

</div>
</div>

<div class="span3">
    <div id="sidebar">
        <sidebar:postalcode-sidebar/>
    </div>
</div>
</div>
</section>
</div>

</div>

<misc:footer_v2/> <misc:jqueryblob_v2/>

</body>
</html>