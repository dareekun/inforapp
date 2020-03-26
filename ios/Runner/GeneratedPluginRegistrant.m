//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"

#if __has_include(<native_pdf_renderer/NativePDFRendererPlugin.h>)
#import <native_pdf_renderer/NativePDFRendererPlugin.h>
#else
@import native_pdf_renderer;
#endif

#if __has_include(<path_provider/FLTPathProviderPlugin.h>)
#import <path_provider/FLTPathProviderPlugin.h>
#else
@import path_provider;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [NativePDFRendererPlugin registerWithRegistrar:[registry registrarForPlugin:@"NativePDFRendererPlugin"]];
  [FLTPathProviderPlugin registerWithRegistrar:[registry registrarForPlugin:@"FLTPathProviderPlugin"]];
}

@end
