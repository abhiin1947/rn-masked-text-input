#ifdef RCT_NEW_ARCH_ENABLED
#import "RnMaskedTextInputView.h"

#import <react/renderer/components/RNRnMaskedTextInputViewSpec/ComponentDescriptors.h>
#import <react/renderer/components/RNRnMaskedTextInputViewSpec/EventEmitters.h>
#import <react/renderer/components/RNRnMaskedTextInputViewSpec/Props.h>
#import <react/renderer/components/RNRnMaskedTextInputViewSpec/RCTComponentViewHelpers.h>

#import "RCTFabricComponentsPlugins.h"
#import "Utils.h"

using namespace facebook::react;

@interface RnMaskedTextInputView () <RCTRnMaskedTextInputViewViewProtocol>

@end

@implementation RnMaskedTextInputView {
    UIView * _view;
}

+ (ComponentDescriptorProvider)componentDescriptorProvider
{
    return concreteComponentDescriptorProvider<RnMaskedTextInputViewComponentDescriptor>();
}

- (instancetype)initWithFrame:(CGRect)frame
{
  if (self = [super initWithFrame:frame]) {
    static const auto defaultProps = std::make_shared<const RnMaskedTextInputViewProps>();
    _props = defaultProps;

    _view = [[UIView alloc] init];

    self.contentView = _view;
  }

  return self;
}

- (void)updateProps:(Props::Shared const &)props oldProps:(Props::Shared const &)oldProps
{
    const auto &oldViewProps = *std::static_pointer_cast<RnMaskedTextInputViewProps const>(_props);
    const auto &newViewProps = *std::static_pointer_cast<RnMaskedTextInputViewProps const>(props);

    if (oldViewProps.color != newViewProps.color) {
        NSString * colorToConvert = [[NSString alloc] initWithUTF8String: newViewProps.color.c_str()];
        [_view setBackgroundColor: [Utils hexStringToColor:colorToConvert]];
    }

    [super updateProps:props oldProps:oldProps];
}

Class<RCTComponentViewProtocol> RnMaskedTextInputViewCls(void)
{
    return RnMaskedTextInputView.class;
}

@end
#endif
