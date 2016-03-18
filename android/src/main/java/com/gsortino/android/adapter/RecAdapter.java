package com.gsortino.android.adapter;

import android.content.Context;
import android.support.v7.widget.RecyclerView;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;

import com.gsortino.android.R;
import com.gsortino.shared.model.User;
import com.squareup.picasso.Picasso;

import java.util.ArrayList;

/**
 * Created by gsortino on 07/03/16.
 */
public class RecAdapter extends RecyclerView.Adapter<RecAdapter.RecViewHolder> {

    private ArrayList<User> mUsers;
    private Context mContext;

    public RecAdapter(Context ctx) {
        mContext = ctx;
    }

    public ArrayList<User> getUsers() {
        return mUsers;
    }

    public void setUsers(ArrayList<User> users) {
        mUsers = users;
        notifyDataSetChanged();
    }

    @Override
    public RecViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        View itemView = LayoutInflater.from(parent.getContext())
                .inflate(R.layout.main_item, parent, false);
        return new RecViewHolder(itemView);
    }

    @Override
    public void onBindViewHolder(RecViewHolder holder, int position) {
        User user = getUsers().get(position);
        holder.stargazer.setText(user.getLogin());
        Picasso.with(mContext).load(user.getAvatarUrl()).fit().into(holder.avatar);
    }

    @Override
    public int getItemCount() {
        if (getUsers() == null)
            return 0;

        return getUsers().size();
    }

    public class RecViewHolder extends RecyclerView.ViewHolder {
        public ImageView avatar;
        public TextView stargazer;

        public RecViewHolder(View itemView) {
            super(itemView);
            avatar = (ImageView) itemView.findViewById(R.id.main_item_imageview);
            stargazer = (TextView) itemView.findViewById(R.id.main_item_textview);
        }
    }
}
