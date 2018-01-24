### Postman [SOAP]


#### Example:  Search Holiday in Canada on 
Http Method:  
POST

URL:
```
http://www.holidaywebservice.com//HolidayService_v2/HolidayService2.asmx
```

Body:  raw:  text/xml
```xml
<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/" xmlns:hs="http://www.holidaywebservice.com/HolidayService_v2/">
 <soapenv:Body>
     <hs:GetHolidaysForMonth>
        <hs:year>2018</hs:year>
        <hs:countryCode>Canada</hs:countryCode>
        <hs:month>2</hs:month>
     </hs:GetHolidaysForMonth>
 </soapenv:Body>
</soapenv:Envelope>
```

Test:  
```js
pm.test("First holiday on Feb should be GROUNDHOG-DAY", function () {
    
    var jsonObject = xml2Json(responseBody);
    console.log(jsonObject);
    pm.expect(jsonObject['soap:Envelope']['soap:Body']
    .GetHolidaysForMonthResponse
    .GetHolidaysForMonthResult
    .Holiday[0].HolidayCode)
    .to.eql("GROUNDHOG-DAY");
});
```

Response Body:  
```xml
<?xml version="1.0" encoding="utf-8"?>
<soap:Envelope xmlns:soap="http://schemas.xmlsoap.org/soap/envelope/" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema">
    <soap:Body>
        <GetHolidaysForMonthResponse xmlns="http://www.holidaywebservice.com/HolidayService_v2/">
            <GetHolidaysForMonthResult>
                <Holiday>
                    <Country>Canada</Country>
                    <HolidayCode>GROUNDHOG-DAY</HolidayCode>
                    <Descriptor>Groundhog Day</Descriptor>
                    <HolidayType>Other</HolidayType>
                    <DateType>ObservedActual</DateType>
                    <BankHoliday>NotRecognized</BankHoliday>
                    <Date>2018-02-02T00:00:00</Date>
                </Holiday>
                <Holiday>
                    <Country>Canada</Country>
                    <HolidayCode>SHROVE-TUESDAY</HolidayCode>
                    <Descriptor>Shrove Tuesday (Pancake Day)</Descriptor>
                    <HolidayType>Religious</HolidayType>
                    <DateType>ObservedActual</DateType>
                    <BankHoliday>NotRecognized</BankHoliday>
                    <Date>2018-02-13T00:00:00</Date>
                </Holiday>
            </GetHolidaysForMonthResult>
        </GetHolidaysForMonthResponse>
    </soap:Body>
</soap:Envelope>
```

Convert XML body to a JSON
```js
{
    "soap:Envelope": {
        "soap:Body": {
            "GetHolidaysForMonthResponse":{
                "GetHolidaysForMonthResult": {
                    "Holiday": [
                        { "Country": "Canada",
                         "HolidayCode": "GROUNDHOG-DAY", 
                         "Descriptor": "Groundhog Day", 
                         "HolidayType": "Other", 
                         "DateType": "ObservedActual", 
                         "BankHoliday": "NotRecognized", 
                         "Date": "2018-02-02T00:00:00"
                        }, 
                        { "Country": "Canada",
                         "HolidayCode": "SHROVE-TUESDAY", 
                         "Descriptor": "Shrove Tuesday (Pancake Day)", 
                         "HolidayType": "Religious", 
                         "DateType": "ObservedActual", 
                         "BankHoliday": "NotRecognized", 
                         "Date": "2018-02-13T00:00:00"
                        }
                    ]
                }
            }
        }
    }
}

```

Link:  
[http://blog.getpostman.com/2014/08/22/making-soap-requests-using-postman/](http://blog.getpostman.com/2014/08/22/making-soap-requests-using-postman/)  
[http://blog.getpostman.com/2017/11/18/postman-makes-soap-requests-too/](http://blog.getpostman.com/2017/11/18/postman-makes-soap-requests-too/)  
[http://noelarlante.com/soap-requests-using-postman-error-solved/](http://noelarlante.com/soap-requests-using-postman-error-solved/)  
[https://www.krengeltech.com/2017/05/tutorial-using-postman-to-test-xml-web-services/](https://www.krengeltech.com/2017/05/tutorial-using-postman-to-test-xml-web-services/)  

