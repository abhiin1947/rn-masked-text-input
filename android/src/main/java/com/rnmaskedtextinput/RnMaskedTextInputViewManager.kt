package com.rnmaskedtextinput

import android.graphics.Color
import com.facebook.react.module.annotations.ReactModule
import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.ThemedReactContext
import com.facebook.react.uimanager.annotations.ReactProp

@ReactModule(name = RnMaskedTextInputViewManager.NAME)
class RnMaskedTextInputViewManager :
  RnMaskedTextInputViewManagerSpec<RnMaskedTextInputView>() {
  override fun getName(): String {
    return NAME
  }

  public override fun createViewInstance(context: ThemedReactContext): RnMaskedTextInputView {
    return RnMaskedTextInputView(context)
  }

  @ReactProp(name = "color")
  override fun setColor(view: RnMaskedTextInputView?, color: String?) {
    view?.setBackgroundColor(Color.parseColor(color))
  }

  companion object {
    const val NAME = "RnMaskedTextInputView"
  }
}
