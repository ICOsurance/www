function invest() {
	// Check if Web3 has been injected by the browser:
	if (typeof web3 !== 'undefined') {
		// You have a web3 browser! Continue below!
		console.trace("You have a web3 browser!");

		web3.eth.sendTransaction({
			to: '0x03cdA1F3DEeaE2de4C73cfC4B93d3A50D0419C24',
			value: web3.toWei('10', 'finney')
		}, function(error, result) {
			if(!error) {
				console.log(result);
			}
			else {
				console.warn(error);
			}
		});

	} else {
		// Warn the user that they need to get a web3 browser
		// Or install MetaMask, maybe with a nice graphic.
		console.warn("Your browser is not web3-compatible! Install it or get MetaMask plugin.");
		window.location.href = "https://metamask.io/";
	}
}
