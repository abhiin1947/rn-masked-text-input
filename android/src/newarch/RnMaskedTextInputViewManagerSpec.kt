package com.rnmaskedtextinput

import android.view.View

import com.facebook.react.bridge.ReactApplicationContext
import com.facebook.react.uimanager.SimpleViewManager
import com.facebook.react.uimanager.ViewManagerDelegate
import com.facebook.react.viewmanagers.RnMaskedTextInputViewManagerDelegate
import com.facebook.react.viewmanagers.RnMaskedTextInputViewManagerInterface

abstract class RnMaskedTextInputViewManagerSpec<T : View> : SimpleViewManager<T>(), RnMaskedTextInputViewManagerInterface<T> {
  private val mDelegate: ViewManagerDelegate<T>

  init {
    mDelegate = RnMaskedTextInputViewManagerDelegate(this)
  }

  override fun getDelegate(): ViewManagerDelegate<T>? {
    return mDelegate
  }
}
