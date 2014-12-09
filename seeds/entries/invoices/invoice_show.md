---

category_name: invoice
title: 請求書の取得
action: show

---

# 請求書の取得

## 請求書を取得します。


`GET https://creativesurvey.com/api/v1/invoice`

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/invoice \
-d "auth_token=sample_auth_token"

レスポンス例
{
  "date": 1444824935,
  "period_start": 1413288935,
  "period_end": 1444824935,
  "lines": {
    "object": "list",
    "total_count": 1,
    "has_more": false,
    "url": "/v1/invoices/upcoming/lines?customer=cus_4xHWAADQknyZkV",
    "data": [
      {
        "id": "sub_4xHWUuDn4aF7L4",
        "object": "line_item",
        "type": "subscription",
        "livemode": false,
        "amount": 199900,
        "currency": "usd",
        "proration": false,
        "period": {
          "start": 1444824935,
          "end": 1476447335
        },
        "subscription": null,
        "quantity": 1,
        "plan": {
          "id": "ultramarine_annual",
          "interval": "year",
          "name": "ULTRAMARINE(Annual)",
          "created": 1378728826,
          "amount": 199900,
          "currency": "usd",
          "object": "plan",
          "livemode": false,
          "interval_count": 1,
          "trial_period_days": null,
          "metadata": {},
          "statement_description": null
        },
        "description": null,
        "metadata": {}
      }
    ],
    "count": 1
  },
  "subtotal": 199900,
  "total": 199900,
  "customer": "cus_4xHWAADQknyZkV",
  "object": "invoice",
  "attempted": false,
  "closed": false,
  "forgiven": false,
  "paid": false,
  "livemode": false,
  "attempt_count": 0,
  "amount_due": 199900,
  "currency": "usd",
  "starting_balance": 0,
  "ending_balance": null,
  "next_payment_attempt": 1444828535,
  "webhooks_delivered_at": null,
  "charge": null,
  "discount": null,
  "application_fee": null,
  "subscription": "sub_4xHWUuDn4aF7L4",
  "metadata": {},
  "statement_description": null,
  "description": null,
  "receipt_number": null
}

レスポンス例(キャンセル予約をしている場合)
{
   "success" : true,
   "canceled_at" : 1425377075
}

~~~

 
~~~
def ruby_code
  # ruby code goes here
end
~~~

　
　
