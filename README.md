# EnergypriceAPI

energypriceapi is the official Swift wrapper for EnergypriceAPI.com. This allows you to quickly integrate our API and foreign exchange rate API into your application. Check https://energypriceapi.com documentation for more information.

## Installation

We offer multiple ways to install our library.

### Cocoapods

In your `Podfile`, specify:

`pod EnergypriceAPI`

### Carthage

In your `Cartfile`, specify:

`github "EnergypriceAPI"`

### Swift Package Manager

In Xcode, select File ▸ Swift Packages ▸ Add Package Dependency… and use the url: `https://github.com/energypriceapi/energypriceapi-swift.git`

## Usage

```swift
import EnergypriceAPI

apiKey = 'SET_YOUR_API_KEY_HERE'
let client = EnergypriceAPIService(apiKey: apiKey)
```
---
## Documentation

#### fetchSymbols()
```swift
client.fetchSymbols(completion: { result in
  // do something
}
```

[Link](https://energypriceapi.com/documentation#api_symbol)

---
#### fetchLive(base, currencies)

- `base` <[string]> Optional. Pass in a base currency, defaults to USD.
- `currencies` <[List]<[string]>> Optional. Pass in an list of currencies to return values for.

```swift
client.fetchLive(base: "USD", currencies: ["BRENT", "GASOLINE", "NATURALGAS", "WTI"], completion: { result in
  // do something
}
```

[Link](https://energypriceapi.com/documentation#api_realtime)

---
#### fetchHistorical(date, base, currencies)

- `date` <[string]> Required. Pass in a string with format `YYYY-MM-DD`
- `base` <[string]> Optional. Pass in a base currency, defaults to USD.
- `currencies` <[List]<[string]>> Optional. Pass in an list of currencies to return values for.

```swift
clientfetchHistorical(date: "2021-04-05", base: "USD", currencies: ["AUD", "XAG", "GBP", "JPY"], completion: { result in
  // do something
}
```

[Link](https://energypriceapi.com/documentation#api_historical)

---
#### convert(from_currency, to_currency, amount, date)

- `from_currency` <[string]> Optional. Pass in a base currency, defaults to USD.
- `to_currency` <[string]> Required. Specify currency you would like to convert to.
- `amount` <[number]> Required. The amount to convert.
- `date` <[string]> Optional. Specify date to use historical midpoint value for conversion with format `YYYY-MM-DD`. Otherwise, it will use live exchange rate date if value not passed in.

```swift
client.convert(fromCurrency: "USD", toCurrency: "EUR", amount: 100.0, date: "2021-04-05", completion: { result in
  // do something
}
```

[Link](https://energypriceapi.com/documentation#api_convert)

---
#### timeframe(start_date, end_date, base, currencies)

- `start_date` <[string]> Required. Specify the start date of your timeframe using the format `YYYY-MM-DD`.
- `end_date` <[string]> Required. Specify the end date of your timeframe using the format `YYYY-MM-DD`.
- `base` <[string]> Optional. Pass in a base currency, defaults to USD.
- `currencies` <[List]<[string]>> Optional. Pass in an list of currencies to return values for.

```swift
client.timeframe(startDate: "2021-04-05", endDate: "2021-04-06", base: "USD", currencies: ["AUD", "XAG", "GBP", "JPY"], completion: { result in
  // do something
}
```

[Link](https://energypriceapi.com/documentation#api_timeframe)

---
#### change(start_date, end_date, base, currencies)

- `start_date` <[string]> Required. Specify the start date of your timeframe using the format `YYYY-MM-DD`.
- `end_date` <[string]> Required. Specify the end date of your timeframe using the format `YYYY-MM-DD`.
- `base` <[string]> Optional. Pass in a base currency, defaults to USD.
- `currencies` <[List]<[string]>> Optional. Pass in an list of currencies to return values for.

```swift
client.change(startDate: "2021-04-05", endDate: "2021-04-06", base: "USD", currencies: ["AUD", "XAG", "GBP", "JPY"], completion: { result in
  // do something
}
```

[Link](https://energypriceapi.com/documentation#api_change)

---
**[Official documentation](https://energypriceapi.com/documentation)**


---
## FAQ

- How do I get an API Key?

    Free API Keys are available [here](https://energypriceapi.com).

- I want more information

    Checkout our FAQs [here](https://energypriceapi.com/faq).


## Support

For support, get in touch using [this form](https://energypriceapi.com/contact).


[List]: https://www.w3schools.com/python/python_datatypes.asp 'List'
[number]: https://www.w3schools.com/python/python_datatypes.asp 'Number'
[string]: https://www.w3schools.com/python/python_datatypes.asp 'String'