package com.gsortino.shared.model;

import java.util.Collection;
import java.util.HashMap;

/**
 * Created by gsortino on 28/02/16.
 */
public class VolatileStorage {

    private Object mContext;

    public enum VolatileStorageComponent {
        CITIES_LIST,
        SERVICES_LIST
    }

    public VolatileStorage() {
        mStorage = new HashMap<>();
    }

    private HashMap<VolatileStorageComponent, Collection<? extends BaseItem>> mStorage;

    public VolatileStorage(Object mContext) {
        this.mContext = mContext;
    }

    public HashMap<VolatileStorageComponent, Collection<? extends BaseItem>> getStorage() {
        if (mStorage == null)
            mStorage = new HashMap<>();

        return mStorage;
    }

    public Collection<? extends BaseItem> getElementStorage(VolatileStorageComponent string) {
        if (string == null || mStorage == null)
            return null;

        return mStorage.get(string);
    }
}
