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
pm.test("Your test name", function () {
    
    var jsonObject = xml2Json(responseBody);
    console.log(jsonObject);
    pm.expect(jsonObject['soap:Envelope']['soap:Body'].GetHolidaysForMonthResponse.GetHolidaysForMonthResult.Holiday[0].HolidayCode).to.eql("GROUNDHOG-DAY");
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
                <Holiday>
                    <Country>Canada</Country>
                    <HolidayCode>ASH-WEDNESDAY</HolidayCode>
                    <Descriptor>Ash Wednesday</Descriptor>
                    <HolidayType>Religious</HolidayType>
                    <DateType>ObservedActual</DateType>
                    <BankHoliday>NotRecognized</BankHoliday>
                    <Date>2018-02-14T00:00:00</Date>
                </Holiday>
                <Holiday>
                    <Country>Canada</Country>
                    <HolidayCode>VALENTINES-DAY</HolidayCode>
                    <Descriptor>Valentine's Day</Descriptor>
                    <HolidayType>Notable</HolidayType>
                    <DateType>ObservedActual</DateType>
                    <BankHoliday>NotRecognized</BankHoliday>
                    <Date>2018-02-14T00:00:00</Date>
                </Holiday>
                <Holiday>
                    <Country>Canada</Country>
                    <HolidayCode>FLAG-DAY</HolidayCode>
                    <Descriptor>Flag Day</Descriptor>
                    <HolidayType>Notable</HolidayType>
                    <DateType>ObservedActual</DateType>
                    <BankHoliday>NotRecognized</BankHoliday>
                    <Date>2018-02-15T00:00:00</Date>
                </Holiday>
                <Holiday>
                    <Country>Canada</Country>
                    <HolidayCode>HERITAGE-DAY-YT</HolidayCode>
                    <Descriptor>Heritage Day (YT)</Descriptor>
                    <HolidayType>Other</HolidayType>
                    <DateType>ObservedActual</DateType>
                    <BankHoliday>Recognized</BankHoliday>
                    <Date>2018-02-16T00:00:00</Date>
                    <ApplicableRegions>
                        <RegionCode>
                            <Code>YT</Code>
                            <Description>Yukon</Description>
                        </RegionCode>
                    </ApplicableRegions>
                </Holiday>
                <Holiday>
                    <Country>Canada</Country>
                    <HolidayCode>FAMILY-DAY</HolidayCode>
                    <Descriptor>Family Day (AB, ON, SK)</Descriptor>
                    <HolidayType>Notable</HolidayType>
                    <DateType>ObservedActual</DateType>
                    <BankHoliday>Recognized</BankHoliday>
                    <Date>2018-02-19T00:00:00</Date>
                    <ApplicableRegions>
                        <RegionCode>
                            <Code>AB</Code>
                            <Description>Alberta</Description>
                        </RegionCode>
                        <RegionCode>
                            <Code>ON</Code>
                            <Description>Ontario</Description>
                        </RegionCode>
                        <RegionCode>
                            <Code>SK</Code>
                            <Description>Saskatchewan</Description>
                        </RegionCode>
                    </ApplicableRegions>
                </Holiday>
                <Holiday>
                    <Country>Canada</Country>
                    <HolidayCode>ISLANDER-DAY</HolidayCode>
                    <Descriptor>Islander Day (PE)</Descriptor>
                    <HolidayType>Other</HolidayType>
                    <DateType>ObservedActual</DateType>
                    <BankHoliday>Recognized</BankHoliday>
                    <Date>2018-02-19T00:00:00</Date>
                    <ApplicableRegions>
                        <RegionCode>
                            <Code>PE</Code>
                            <Description>Prince Edward Island</Description>
                        </RegionCode>
                    </ApplicableRegions>
                </Holiday>
                <Holiday>
                    <Country>Canada</Country>
                    <HolidayCode>LOUIS-RIEL-DAY</HolidayCode>
                    <Descriptor>Louis Riel Day (MB)</Descriptor>
                    <HolidayType>Notable</HolidayType>
                    <DateType>ObservedActual</DateType>
                    <BankHoliday>Recognized</BankHoliday>
                    <Date>2018-02-19T00:00:00</Date>
                    <ApplicableRegions>
                        <RegionCode>
                            <Code>MB</Code>
                            <Description>Manitoba</Description>
                        </RegionCode>
                    </ApplicableRegions>
                </Holiday>
            </GetHolidaysForMonthResult>
        </GetHolidaysForMonthResponse>
    </soap:Body>
</soap:Envelope>
```

Link:  
[http://blog.getpostman.com/2014/08/22/making-soap-requests-using-postman/](http://blog.getpostman.com/2014/08/22/making-soap-requests-using-postman/)  
[http://blog.getpostman.com/2017/11/18/postman-makes-soap-requests-too/](http://blog.getpostman.com/2017/11/18/postman-makes-soap-requests-too/)  

[http://noelarlante.com/soap-requests-using-postman-error-solved/](http://noelarlante.com/soap-requests-using-postman-error-solved/)  

[https://www.krengeltech.com/2017/05/tutorial-using-postman-to-test-xml-web-services/](https://www.krengeltech.com/2017/05/tutorial-using-postman-to-test-xml-web-services/)  

