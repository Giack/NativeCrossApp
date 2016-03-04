package com.gsortino.shared.presenter;

/**
 * Created by gsortino on 28/02/16.
 */
public interface Presenter<V> {

    void attachView(V view);

    void detachView(V view);
}
