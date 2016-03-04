package com.gsortino.shared.model;

/**
 * Created by gsortino on 03/03/16.
 */
public class User {

    public String login;
    public String avatar_url;

    public String getLogin() {
        return login;
    }

    public void setLogin(String login) {
        this.login = login;
    }

    public String getAvatarUrl() {
        return avatar_url;
    }

    public void setAvatarUrl(String avatar_url) {
        this.avatar_url = avatar_url;
    }
}
