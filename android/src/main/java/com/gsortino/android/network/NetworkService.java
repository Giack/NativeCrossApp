package com.gsortino.android.network;

import com.gsortino.shared.model.User;
import com.gsortino.shared.network.NetworkCallback;
import com.gsortino.shared.network.NetworkInterface;
import com.squareup.okhttp.OkHttpClient;

import java.util.ArrayList;
import java.util.concurrent.Executor;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

import retrofit.Callback;
import retrofit.RestAdapter;
import retrofit.RetrofitError;
import retrofit.client.OkClient;
import retrofit.client.Response;

/**
 * Created by gsortino on 02/03/16.
 */
public class NetworkService implements NetworkInterface {

    private static NetworkService _instance;
    private final RestInterface mRestInterface;

    public static NetworkService getInstance() {
        if (_instance == null)
            _instance = new NetworkService();

        return _instance;
    }

    public NetworkService() {
        OkHttpClient okHttpClient = new OkHttpClient();
        try {
            okHttpClient.setReadTimeout(30, TimeUnit.SECONDS);
            okHttpClient.setConnectTimeout(30, TimeUnit.SECONDS);
            okHttpClient.setWriteTimeout(30, TimeUnit.SECONDS);
        } catch (Exception e) {
//            Timber.e(e, "NO CACHE");
        }
        OkClient client = new OkClient(okHttpClient);

        Executor executor = Executors.newFixedThreadPool(4);

        RestAdapter.Log logToTimber = new RestAdapter.Log() {
            @Override
            public void log(String message) {
//                Timber.d(message);
            }
        };
        RestAdapter restAdapter = new RestAdapter.Builder()
                .setEndpoint("TEST")
                .setLogLevel(RestAdapter.LogLevel.FULL)
                .setLog(logToTimber)
                .setClient(client)
                .build();

        mRestInterface = restAdapter.create(RestInterface.class);
    }

    @Override
    public void retriveStargazers(String owner, String repository, final NetworkCallback<ArrayList<User>> callback) {

        mRestInterface.getStargazer(owner, repository, new Callback<ArrayList<User>>() {
            @Override
            public void success(ArrayList<User> users, Response response) {
                callback.onSuccess(users);
            }

            @Override
            public void failure(RetrofitError error) {
                callback.onError(error.getMessage());
            }
        });
    }
}
