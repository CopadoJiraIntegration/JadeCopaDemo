/*
This file is generated and isn't the actual source code for this
managed global class.
This read-only file shows the class's global constructors,
methods, variables, and properties.
To enable code to compile, all methods return null.
*/
global interface PaymentGateWay {
    Map<String,blng.TransactionResult> authorizeTransaction(Map<String,blng.TransactionParameter> param0);
    Map<String,blng.TransactionResult> chargeTransaction(Map<String,blng.TransactionParameter> param0);
    Map<String,blng.TransactionResult> generateToken(Map<String,blng.TransactionParameter> param0);
    Map<String,blng.TransactionResult> refundTransaction(Map<String,blng.TransactionParameter> param0);
    Map<String,blng.TransactionResult> voidTransaction(Map<String,blng.TransactionParameter> param0);
}
