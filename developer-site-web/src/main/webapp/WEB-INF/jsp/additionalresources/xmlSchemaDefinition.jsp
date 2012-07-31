<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="misc" tagdir="/WEB-INF/tags" %>


<!DOCTYPE html>

<html>

<head>
    <misc:contenttype/>
    <misc:title value="Choose Pickup Point"/>
    <misc:css_v2/>
</head>

<body>

<div class="wrapper">

    <misc:header_v2 selected_tab="developer"/>

    <div id="page">
        <section id="content">
            <div class="row-fluid">
                <div class="span9">
                    <div class="box">
                        <h1>XML Schema Definition for Tracking API</h1>
                    </div>
                    <div class="box">
                        <p>
                            XML Schema definition for the elements available in the response from the Tracking API.
                        </p>
                        <h4>XSD</h4>

                        <div class="box lightBorder">


                            <div class="tab api-call">
                                <p>Request:</p>
                                <a target="_blank" class="request" href="http://beta.bring.no/sporing/sporing.xsd" data-internal="/proxy/tracking/sporing.xsd">…/sporing.xsd</a>
                                <p>Response:</p>
                                <pre class="code-box xml response delay-snippet"></pre>
                            </div>



                        </div>



                    </div>
                </div>
                <div class="span3">
                    <div id="sidebar">
                        <misc:sidebar />
                    </div>
                </div>
            </div>
        </section>
    </div>

</div>

<misc:footer_v2 />
<misc:jqueryblob_v2 />

</body>



</html>