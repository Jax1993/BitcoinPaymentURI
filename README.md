# BitcoinPaymentURI
___

Library to parse and generate Bitcoin payments URI.
See [BIP21](https://github.com/bitcoin/bips/blob/master/bip-0021.mediawiki) for more info.

forked from [SandroMachado/BitcoinPaymentURI](https://github.com/SandroMachado/BitcoinPaymentURI)

## New Feature


- support more than bitcoin
- swift 4


## Usage

	let content = "bitcoin:175tWpb8K1S7NmH4Zx6rewF9WQrcZv245W?label=Luke-Jr"
	guard let bpuri = BitcoinPaymentURI.parse(content) else { return nil }
	//bpuri.schema: bitcoin
	//bpuri.address: 175tWpb8K1S7NmH4Zx6rewF9WQrcZv245W

## License

BitcoinPaymentURI is available under the MIT license. See the LICENSE file for more info.