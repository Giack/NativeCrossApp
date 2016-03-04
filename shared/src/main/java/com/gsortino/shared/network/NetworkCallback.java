package com.gsortino.shared.network;

/**
 * Created by gsortino on 02/03/16.
 */
public interface NetworkCallback<T> {
    void onSuccess(T data);
    void onError(String error);
}
