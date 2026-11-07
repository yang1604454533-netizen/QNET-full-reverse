package com.mysql.fabric.proto.xmlrpc;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ResultSetParser {
    public List<Map<String, ?>> parse(Map<String, ?> map, List<List<Object>> list) {
        List list2 = (List) map.get("names");
        HashMap map2 = new HashMap();
        for (int i = 0; i < list2.size(); i++) {
            map2.put(list2.get(i), Integer.valueOf(i));
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (List<Object> list3 : list) {
            HashMap map3 = new HashMap();
            for (Map.Entry entry : map2.entrySet()) {
                map3.put(entry.getKey(), list3.get(((Integer) entry.getValue()).intValue()));
            }
            arrayList.add(map3);
        }
        return arrayList;
    }
}
