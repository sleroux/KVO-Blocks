##KVO Blocks - Bringing KVO into the modern world

### Idea

Tired of having a giant observeForKeyPath method that is just filled with if statements for determining which value actually changed? Wish there was a better way? *Blocks* are a great way to encapsulate tidbits of functionality - why not combine the power of KVO with the modularity of blocks? 

**Wait no more**

By adding a super simple category to your NSObject class you too can experience cleaner KVO code while avoiding those nested if statements.

### Setup

To add to your project using CocoaPods, add the following to your Podfile:

	pod 'KVOBlocks'

Alternatively, you can also just copy the single category class from the KVO Blocks directory and add directly into your project.

### Usage

To get started with using blocks as your observer, you can use the similiar method signature as the original addObserver method

	[model addObserver:self forKeyPath:@"keyname" options:NSKeyValueObservingOptionsNew context:nil withBlock:^(NSDictionary *change, void *context) {
		// Handle KVO change on this keyname
	}];
	
Similarly, to remove the observer you can call as you normally would:

	[model removeBlockObserver:self forKeyPath:@"keyname"];
	
### Feedback

If theres any questions or concerns, feel free to let me know - this is just small something I put together to help de-clutter my code so any suggestions are welcome!