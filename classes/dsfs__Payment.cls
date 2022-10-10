/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global class Payment {
    global static dsfs.Payment.Configuration getConfiguration() {
        return null;
    }
    global static Boolean isEnabled() {
        return null;
    }
global class Configuration {
    global List<dsfs.Payment.PaymentCurrency> currencies {
        get;
    }
    global List<dsfs.Payment.Gateway> gateways {
        get;
    }
    global List<dsfs.Payment.Method> methods {
        get;
    }
}
global class Gateway {
    global String id {
        get;
    }
    global String name {
        get;
    }
    global Gateway(String id, String name) {

    }
}
global class Method {
    global String name {
        get;
    }
    global String type {
        get;
    }
    global Method(String type, String name) {

    }
}
global class PaymentCurrency {
    global String code {
        get;
    }
    global String name {
        get;
    }
    global PaymentCurrency(String code, String name) {

    }
}
}
