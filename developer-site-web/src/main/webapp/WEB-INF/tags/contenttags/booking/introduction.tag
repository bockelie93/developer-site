<%@ tag language="java" pageEncoding="UTF-8"%>
<p>
    The Bring Booking API is a logged-in service that lets Mybring users (customers of mybring.com) programatically
    create a booking by invoking a Web Service over SOAP or by posting XML/JSON over HTTP. The API uses the same
    backend as Bring Booking web (www.bring.no/booking) and the same PDF labels. </p>

<p>
    We support two types of integration with the Booking API. <b>XML/JSON over HTTP</b> and <b>SOAP (over HTTP)</b>.
</p>
<p>
    Bring Booking uses Bring Fraktguide as the source for price and availability for the different products. We
    advise clients of the Booking API to use Fraktguiden for getting the list price and checking availability before
    sending a booking request. Note that invoice payment is the only available payment option for the Booking API.
    This means that the Mybring user ID used in the booking request must have access to the customer number
    specified as payer of the booking. </p>
