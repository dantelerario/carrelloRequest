<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
</head>
    <body>
        <h1>RESULT CARRELLO DI OGGI</h1>
        <ul>
            {{-- @foreach($data as $item)
                <li>*****************************</li>
                <li>ID CARRELLO: {{$item->idcarrello}}</li>
                <li>ID CODICE UNIVOCO: {{$item->codice_univoco}}</li>
                <li>ID CART: {{$item->idcart}}</li>
                <li>ID ORDINE: {{$item->idordine}}</li>
                <li>ORDER DETAILS: {{$item->order_details}}</li>
                <li>DATA: {{$item->created_at}}</li>
                <li>*****************************</li>
            @endforeach --}}
            @foreach($data as $item)
            
                ************************************************************************************ <br>
                ID: {{$item->id}} <br>
                ID_ORDER: {{$item->id_order}} <br>
                ID_ORDER_DETAIL_SELLIN: {{$item->id_order_detail_sellin}} <br>
                ORDER_DETAIL_SELLIN: {{$item->order_detail_sellin}} <br>
                PDV_CODE: {{$item->pdv_code}} <br>
                ORDER_TYPE: {{$item->order_type}} <br>
                EMAIL: {{$item->email}} <br>
                REFERENCE: {{$item->reference}} <br>
                CURRENT_STATE: {{$item->current_state}} <br>
                INVOICE_NUMBER: {{$item->invoice_number}} <br>
                TOTAL_PAID: {{$item->total_paid}} <br>
                TOTAL_PAID_TAX_INCL: {{$item->total_paid_tax_incl}} <br>
                TOTAL_PAID_TAX_EXCL: {{$item->total_paid_tax_excl}} <br>
                TOTAL_SHIPPING: {{$item->total_shipping}} <br>
                TOTAL_PAID_TAX_INCL: {{$item->total_paid_tax_incl}} <br>
                TOTAL_PAID_TAX_EXCL: {{$item->total_paid_tax_excl}} <br>
                DATE_ADD: {{$item->date_add}} <br>
                FIRST_NAME_DELIVERY: {{$item->first_name_delivery}} <br>
                LAST_NAME_DELIVERY: {{$item->last_name_delivery}} <br>
                VAT_DELIVERY: {{$item->vat_delivery}} <br>
                DNI_DELIVERY: {{$item->dni_delivery}} <br> 
                ADDRESS1_DELIVERY: {{$item->address1_delivery}} <br>
                ADDRESS2_DELIVERY: {{$item->address2_delivery}} <br>
                POSTCODE_DELIVERY: {{$item->postcode_delivery}} <br>
                CITY_DELIVERY: {{$item->city_delivery}} <br> 
                PHONE_DELIVERY: {{$item->phone_delivery}} <br>
                FIRST_NAME_INVOICE: {{$item->first_name_invoice}} <br>
                LAST_NAME_INVOICE: {{$item->last_name_invoice}} <br>
                VAT_INVOICE: {{$item->vat_invoice}} <br>
                DNI_INVOICE: {{$item->dni_invoice}} <br>
                ADDRESS1_INVOICE: {{$item->address1_invoice}} <br>
                ADDRESS2_INVOICE: {{$item->address2_invoice}} <br> 
                POSTCODE_INVOICE: {{$item->postcode_invoice}} <br>
                CITY_INVOICE: {{$item->city_invoice}} <br>
                PHONE_INVOICE: {{$item->phone_invoice}} <br>
                TRANSACTION_ID: {{$item->transaction_id}} <br> 
                PAYMENT: {{$item->payment}} <br>
                PDV: {{$item->pdv}} <br>
                ID_SHOP: {{$item->id_shop}} <br>
                NOTE: {{$item->note}} <br>
                DATA_UPDATE: {{$item->data_update}} <br>

                TOT_ONLINE_ORDER: {{$item->tot_online_order}} <br>
                DATE_ASSIGN_MISSION: {{$item->date_assign_mission}} <br>
                DATE_START_MISSION: {{$item->date_start_mission}} <br>
                DATE_END_MISSION: {{$item->date_end_mission}}  <br>  
                MISSION_STATE: {{$item->mission_state}} <br>
        
            @endforeach
        </ul>
    </body>
</html>