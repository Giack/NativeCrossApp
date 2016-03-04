package com.gsortino.shared.presenter;

import com.gsortino.shared.model.User;
import com.gsortino.shared.network.NetworkCallback;
import com.gsortino.shared.view.MainMvpView;

import java.util.ArrayList;

/**
 * Created by gsortino on 28/02/16.
 */
public class MainPresenter extends BasePresenter<MainMvpView> {

    private ArrayList<User> mData;

    @Override
    public void attachView(MainMvpView view) {
        super.attachView(view);
        if (mData != null)
            getView().showList(mData);
    }

    public void loadData(String user, String repository) {
        getView().showProgressIndicator();
        getNetworkInterface().retriveStargazers(user, repository, new NetworkCallback<ArrayList<User>>() {
            @Override
            public void onSuccess(ArrayList<User> data) {
                mData = data;
                getView().showList(data);
                getView().hideProgressIndicator();
            }

            @Override
            public void onError(String error) {
                getView().hideProgressIndicator();
                getView().showMessage(error);
            }
        });
    }
}
