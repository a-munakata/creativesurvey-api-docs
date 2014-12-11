---

category_name: receipt
title: 領収書一覧の取得
action: index

---

# 領収書一覧の取得

## 領収書一覧を取得します。

`GET https://creativesurvey.com/api/v1/receipts`

~~~

リクエスト例
$ curl -X GET https://creativesurvey.com/api/v1/receipts \
-d "auth_token=sample_auth_token"

レスポンス例
[
  {
    "created_at": "2014-10-14T21:15:43+09:00",
    "data": {
      "id": "evt_4xP1QWTEFxgUw2",
      "created": 1413288936,
      "livemode": false,
      "type": "invoice.payment_succeeded",
      "data": {
        "object": {
          "date": 1413288935,
          "id": "in_4xP1rftH5mlUTe",
          "period_start": 1413288935,
          "period_end": 1413288935,
          "lines": {
            "object": "list",
            "total_count": 2,
            "has_more": false,
            "url": "/v1/invoices/in_4xP1rftH5mlUTe/lines",
            "data": [
              {
                "id": "ii_4xP1hCal3jQutg",
                "object": "line_item",
                "type": "invoiceitem",
                "livemode": false,
                "amount": -1880,
                "currency": "usd",
                "proration": true,
                "period": {
                  "start": 1413288935,
                  "end": 1413288935
                },
                "quantity": null,
                "plan": null,
                "description": "Unused time on LIGHTBLUE after 14 Oct 2014",
                "metadata": {}
              },
              {...},
              {...}
            ],
            "count": 2
          },
          "subtotal": 198020,
          "total": 198020,
          "customer": "sample_customer_id",
          "object": "invoice",
          "attempted": true,
          "closed": true,
          "forgiven": false,
          "paid": true,
          "livemode": false,
          "attempt_count": 1,
          "amount_due": 198020,
          "currency": "usd",
          "starting_balance": 0,
          "ending_balance": 0,
          "next_payment_attempt": null,
          "webhooks_delivered_at": null,
          "charge": "ch_4xP1ZHEUHXCiL0",
          "discount": null,
          "application_fee": null,
          "subscription": "sub_4xHWUuDn4aF7L4",
          "metadata": {},
          "statement_description": null,
          "description": null,
          "receipt_number": null
        }
      },
      "object": "event",
      "pending_webhooks": 1,
      "request": "iar_4xP1ikylnEWCy9"
    },
    "event_id": "evt_4xP1QWTEFxgUw2",
    "id": 340,
    "subscription_date": null,
    "updated_at": "2014-10-14T21:15:43+09:00",
    "user_id": 125,
    "download_url": "https://staging.creativesurvey.com/api/v1/receipts/340.pdf"
  },
  {...},
  {...}
]

~~~

~~~
def ruby_code
  # ruby code goes here
end
~~~

