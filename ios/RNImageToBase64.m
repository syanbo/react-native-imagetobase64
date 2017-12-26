
#import "RNImageToBase64.h"

@implementation RNImageToBase64

RCT_EXPORT_MODULE();

RCT_EXPORT_METHOD(getBase64:(NSString *)uri callback:(RCTResponseSenderBlock)callback)
{
    // 获取网络中的图片
    UIImage *urlImage = [UIImage imageWithData:[NSData dataWithContentsOfURL:[NSURL URLWithString:uri]]];
    NSData *data = UIImageJPEGRepresentation(urlImage, 1.0f);
    NSString *base64Encoded = [data base64EncodedStringWithOptions:NSDataBase64Encoding64CharacterLineLength];
    callback(@[[NSNull null], base64Encoded]);
}

- (dispatch_queue_t)methodQueue
{
    return dispatch_get_main_queue();
}
RCT_EXPORT_MODULE()

@end
  
