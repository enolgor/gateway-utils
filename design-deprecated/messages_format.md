# Messages Format - Draft 1
Keep in mind that during the workshop we agreed to keep the messages "semantic agnostic", since the upper layers (or the rules engine instructions given by the user) will be responsible of giving meaning to the measurements.

The messages shown here are in JSON format but all of them will have a Java Class implementation that can be imported from the "commons" bundle.

*The values of the JSON keys include the "meaning" or possible values and the type: `<value_desc: type>` or `<[value_list|...]: type>`*

## Measurement Data

Output of the protocol controller. Input for the dispatcher, mw_controller, rules_engine, measurement_storage...

```json
    {
        "uid": "<sensor_uid: string>",
        "timestamp": <unix_timestamp: long>,
        "data": [
            {
                "attr_name":"<attr_name: string>",
                "value":"<measurement_value: string>",
                "type": "<{integer|float|string|... (primitive types)}: string>"
            },
            ...
        ]
    }
```

## Actuator Data

Output of the middleware controller, rules_engine, ... Input for the protocol controller.  

```json
    {
        "uid": "<actuator_uid: string>",
        "origin": "<[mw_platform|rules_engine]: string>",
        "timestamp": <unix_timestamp: long>,
        "data": [
            {
                "attr_name":"<attr_name: string>",
                "value":"<action_value: string>",
                "type": "<[integer|float|string|... (primitive types)]: string>"
            },
            ...
        ]
    }
```

## Device Registration
```json
    {
        "name": "<device_name: string>",
        "access_network": "<[bundle_keys]: string>",
        "access_network_opts": "",
        "protocol": "<[bundle_keys]: string>",
        "protocol_opts": "",
        "device_io": [
            {
                "type":"<[sensor|actuator]: string>",
                "attr_name":"<attr_name: string>",
                "attr_type":"<[integer|float|string|... (primitive types)]: string>"
            },
            ...
        ]
    }
```
