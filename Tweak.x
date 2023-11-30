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
+ (BOOL)deviceSupportsImageAnalysis {
    return YES;
}
%end
