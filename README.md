# BitcoinPaymentURI
___

BitcoinPaymentURI is a library to parse and generate Bitcoin payments URI.  
See [BIP21](https://github.com/bitcoin/bips/blob/master/bip-0021.mediawiki) for more info.

forked from [SandroMachado/BitcoinPaymentURI](https://github.com/SandroMachado/BitcoinPaymentURI)

## New Feature


- support more than Bitcoin
- Swift 4


## Usage

### Bitcoin

	let content = "bitcoin:175tWpb8K1S7NmH4Zx6rewF9WQrcZv245W?label=Luke-Jr"
	guard let bpuri = BitcoinPaymentURI.parse(content) else { return nil }
	//bpuri.schema: bitcoin
	//bpuri.address: 175tWpb8K1S7NmH4Zx6rewF9WQrcZv245W
	
### ETH 

	let content = "iban:XE97N3I9OFZXOV7I19OGWFH9LYWG2N5CN0O?amount=0&token=ETH"
	guard let bpuri = BitcoinPaymentURI.parse(content) else { return nil }
	//bpuri.schema: iban
	//bpuri.address: XE97N3I9OFZXOV7I19OGWFH9LYWG2N5CN0O
	//bpuri.symbol: ETH	
	
## License

BitcoinPaymentURI is available under the MIT license. See the LICENSE file for more info.