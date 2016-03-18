package com.gsortino.android;

import android.app.ProgressDialog;
import android.content.Context;
import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.support.v7.widget.LinearLayoutManager;
import android.support.v7.widget.RecyclerView;
import android.widget.Toast;

import com.gsortino.android.adapter.RecAdapter;
import com.gsortino.android.network.NetworkService;
import com.gsortino.shared.model.User;
import com.gsortino.shared.presenter.MainPresenter;
import com.gsortino.shared.view.MainMvpView;

import java.util.ArrayList;

public class MainActivity extends AppCompatActivity implements MainMvpView {

    private ProgressDialog mProgressBar;
    private RecAdapter mAdapter;
    private MainPresenter mPresenter;

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        mProgressBar = new ProgressDialog(this);
        setupRecyclerView();

        mPresenter = new MainPresenter();
        mPresenter.attachView(this);
        mPresenter.attachNetworkInterface(NetworkService.getInstance());

        mPresenter.loadData("google", "j2objc");
    }

    @Override
    public void showList(ArrayList<User> objItems) {
        mAdapter.setUsers(objItems);
    }

    @Override
    public void showMessage(String message) {
        Toast.makeText(MainActivity.this, message, Toast.LENGTH_SHORT).show();
    }

    @Override
    public void showProgressIndicator() {
        mProgressBar.show();
    }

    @Override
    public void hideProgressIndicator() {
        mProgressBar.hide();
    }

    private void setupRecyclerView() {
        RecyclerView recycleView = (RecyclerView) findViewById(R.id.main_recycler_view);
        mAdapter = new RecAdapter(this);
        recycleView.setAdapter(mAdapter);
        recycleView.setHasFixedSize(true);
        recycleView.setLayoutManager(new LinearLayoutManager(this));
    }

    @Override
    public Context getContext() {
        return this;
    }
}
