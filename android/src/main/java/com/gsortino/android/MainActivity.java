package com.gsortino.android;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;

import com.gsortino.android.network.NetworkService;
import com.gsortino.shared.model.User;
import com.gsortino.shared.presenter.MainPresenter;
import com.gsortino.shared.view.MainMvpView;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity implements MainMvpView {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

        MainPresenter presenter = new MainPresenter();
        presenter.attachView(this);
        presenter.attachNetworkInterface(NetworkService.getInstance());

        presenter.loadData("giack87","test");
    }

    @Override
    public void showList(ArrayList<User> objItems) {

    }

    @Override
    public void showMessage(String message) {

    }

    @Override
    public void showProgressIndicator() {

    }

    @Override
    public void hideProgressIndicator() {

    }

    @Override
    public Object getContext() {
        return null;
    }
}
