package com.gsortino.shared.view;

import com.gsortino.shared.model.User;

import java.util.ArrayList;

/**
 * Created by gsortino on 28/02/16.
 */
public interface MainMvpView extends MvpView {

    void showList(ArrayList<User> objItems);

    void showMessage(String message);

    void showProgressIndicator();

    void hideProgressIndicator();
}
