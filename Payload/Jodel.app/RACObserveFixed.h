#import <ReactiveCocoa/ReactiveCocoa.h>

#define RACObserveFixed(TARGET, KEYPATH) \
	({ \
		__weak id target_ = (TARGET); \
		[target_ rac_valuesForKeyPath:@keypath(TARGET, KEYPATH) observer:self]; \
	})
