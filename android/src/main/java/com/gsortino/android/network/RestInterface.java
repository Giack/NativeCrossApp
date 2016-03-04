package com.gsortino.android.network;

import com.gsortino.shared.model.User;

import java.util.ArrayList;

import retrofit.Callback;
import retrofit.http.GET;
import retrofit.http.Path;

/**
 * Created by gsortino on 03/03/16.
 */
public interface RestInterface {
    @GET("/repos/{owner}/{repo}/stargazers")
    void getStargazer(@Path("owner") String owner, @Path("repo") String repository, Callback<ArrayList<User>> callback);
}
