package com.gsortino.shared.network;

import com.gsortino.shared.model.User;

import java.util.ArrayList;

/**
 * Created by gsortino on 02/03/16.
 */
public interface NetworkInterface {

    void retriveStargazers(String owner, String repository, final NetworkCallback<ArrayList<User>> callback);
}
