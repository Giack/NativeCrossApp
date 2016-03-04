package com.gsortino.shared.presenter;


import com.gsortino.shared.model.VolatileStorage;
import com.gsortino.shared.network.NetworkInterface;
import com.gsortino.shared.view.MvpView;

/**
 * Created by gsortino on 28/02/16.
 */
public class BasePresenter<T extends MvpView> implements Presenter<T> {

    private T mMvpView;
    private NetworkInterface mNetworkInterface;

    @Override
    public void attachView(T view) {
        mMvpView = view;
    }

    @Override
    public void detachView(T view) {
        mMvpView = null;
    }

    protected T getView() {
        return mMvpView;
    }

    public void attachNetworkInterface(NetworkInterface networkInterface) {
        mNetworkInterface = networkInterface;
    }

    public NetworkInterface getNetworkInterface() {
        return mNetworkInterface;
    }

    protected VolatileStorage getVolatileStorage() {
        return null;
//        return MainApplication.from(getView().getContext()).getVolatileStorage();
    }
}
