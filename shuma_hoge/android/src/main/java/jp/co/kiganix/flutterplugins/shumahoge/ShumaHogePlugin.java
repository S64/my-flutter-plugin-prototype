package jp.co.kiganix.flutterplugins.shumahoge;

import androidx.annotation.NonNull;

import java.util.HashMap;
import java.util.Map;

import io.flutter.embedding.engine.plugins.FlutterPlugin;
import io.flutter.plugin.common.MethodChannel;

public class ShumaHogePlugin implements FlutterPlugin {

    private final MethodChannel.MethodCallHandler handler = (call, result) -> {
        if (call.method.equals("getHoge")) {
            Map<String, String> map = new HashMap<>();
            map.put("myMessage", "Hello from Android!");
            result.success(map);
        } else {
            result.notImplemented();
        }
    };

    private MethodChannel channel;

    @Override
    public void onAttachedToEngine(@NonNull FlutterPluginBinding binding) {
        channel = new MethodChannel(binding.getBinaryMessenger(), "jp.co.kiganix.flutterplugins/shuma_hoge");
        channel.setMethodCallHandler(handler);
    }

    @Override
    public void onDetachedFromEngine(@NonNull FlutterPluginBinding binding) {
        channel.setMethodCallHandler(null);
    }



}
