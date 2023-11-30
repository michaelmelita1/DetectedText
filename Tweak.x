#import <UIKit/UIKit.h>
%hook CAMCaptureCapabilities
-(bool)isImageAnalysisSupported {
                return YES;
}
-(bool)isImageAnalysisButtonAlwaysVisible {
                return YES;
}
%end
%hook VKImageAnalyzer
-(bool)deviceSupportsImageAnalysis {
    return YES;
}
-(long long)supportedAnalysisTypes {
		return 2;
}
%end
