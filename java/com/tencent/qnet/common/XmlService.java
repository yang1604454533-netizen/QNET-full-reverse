package com.tencent.qnet.common;

import android.app.Application;
import android.content.Context;
import android.support.annotation.Nullable;
import android.util.Log;
import android.util.Xml;
import com.tencent.open.SocialConstants;
import com.tencent.qim.R;
import com.tencent.qnet.global.GlobalSettings;
import com.tencent.qnet.net.NetProfile;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlSerializer;

/* JADX INFO: loaded from: classes.dex */
public class XmlService {
    private static final String XML_FILE = "net_template.xml";
    private static NetProfile s_default_profile;
    private File m_cache_xml;
    private Context m_context;
    private static DateFormat m_dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    private static List<String> s_sortedParamList = new ArrayList();

    public XmlService() {
        try {
            this.m_context = ((Application) Class.forName("android.app.AppGlobals").getMethod("getInitialApplication", new Class[0]).invoke(null, new Object[0])).getApplicationContext();
        } catch (Exception e) {
            e.printStackTrace();
        }
        this.m_cache_xml = new File(this.m_context.getExternalCacheDir(), XML_FILE);
        initDefaultProfile();
    }

    public List<NetProfile> getProposalParams() {
        List<NetProfile> proposalParamsFromCache;
        try {
            if (!this.m_cache_xml.exists()) {
                proposalParamsFromCache = getProposalParamsFromRes();
            } else {
                proposalParamsFromCache = getProposalParamsFromCache(this.m_cache_xml);
            }
        } catch (Exception unused) {
            Log.d(GlobalSettings.LOG_TAG, "make sure NetTemplate.xml exists action going wrong.");
            proposalParamsFromCache = null;
        }
        return proposalParamsFromCache == null ? new ArrayList() : proposalParamsFromCache;
    }

    private List<NetProfile> getProposalParamsFromRes() {
        return parseNetProfiles(this.m_context.getResources().getXml(R.xml.net_template));
    }

    public void initDefaultProfile() {
        if (s_default_profile != null) {
            return;
        }
        try {
            initDefaultNetProfile(this.m_context.getResources().getXml(R.xml.net_template_default));
            NetProfile.initDefault(s_default_profile, s_sortedParamList);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Nullable
    private List<NetProfile> parseNetProfiles(XmlPullParser xmlPullParser) {
        try {
            int eventType = xmlPullParser.getEventType();
            ArrayList arrayList = null;
            NetProfile netProfile = null;
            NetProfile.Param paramAddParam = null;
            while (eventType != 1) {
                if (eventType == 2) {
                    if (xmlPullParser.getName().equals("template")) {
                        NetProfile netProfileCreateDefault = NetProfile.createDefault(this.m_context);
                        netProfileCreateDefault.Name = xmlPullParser.getAttributeValue(null, "name");
                        netProfileCreateDefault.Desc = xmlPullParser.getAttributeValue(null, SocialConstants.PARAM_APP_DESC);
                        netProfileCreateDefault.ID = xmlPullParser.getAttributeValue(null, "id");
                        netProfileCreateDefault.Selected = Boolean.parseBoolean(xmlPullParser.getAttributeValue(null, "selected"));
                        netProfileCreateDefault.Preset = Boolean.parseBoolean(xmlPullParser.getAttributeValue(null, "preset"));
                        netProfileCreateDefault.UpdateTime = m_dateFormat.parse(xmlPullParser.getAttributeValue(null, "update_time"));
                        arrayList.add(netProfileCreateDefault);
                        netProfile = netProfileCreateDefault;
                    } else if (xmlPullParser.getName().equals("param")) {
                        String attributeValue = xmlPullParser.getAttributeValue(null, "name");
                        paramAddParam = s_sortedParamList.contains(attributeValue) ? netProfile.addParam(attributeValue, xmlPullParser.getAttributeValue(null, "value")) : null;
                    } else if (xmlPullParser.getName().equals("change")) {
                        int i = Integer.parseInt(xmlPullParser.getAttributeValue(null, "delta"));
                        int i2 = Integer.parseInt(xmlPullParser.getAttributeValue(null, "interval"));
                        int i3 = Integer.parseInt(xmlPullParser.getAttributeValue(null, "max"));
                        if (paramAddParam != null) {
                            paramAddParam.setChange(i, i2, i3);
                        }
                    } else if (xmlPullParser.getName().equals("NetTemplate")) {
                        arrayList = new ArrayList();
                    }
                }
                eventType = xmlPullParser.next();
            }
            return arrayList;
        } catch (Exception e) {
            e.printStackTrace();
            return new ArrayList();
        }
    }

    @Nullable
    private void initDefaultNetProfile(XmlPullParser xmlPullParser) {
        try {
            s_sortedParamList.clear();
            int eventType = xmlPullParser.getEventType();
            NetProfile netProfile = null;
            NetProfile.Param paramAddParam = null;
            while (eventType != 1) {
                if (eventType == 2) {
                    if (xmlPullParser.getName().equals("template")) {
                        if (s_default_profile == null) {
                            NetProfile netProfileCreateNew = NetProfile.createNew();
                            netProfileCreateNew.Name = xmlPullParser.getAttributeValue(null, "name");
                            netProfileCreateNew.Desc = xmlPullParser.getAttributeValue(null, SocialConstants.PARAM_APP_DESC);
                            netProfileCreateNew.ID = xmlPullParser.getAttributeValue(null, "id");
                            netProfileCreateNew.Selected = Boolean.parseBoolean(xmlPullParser.getAttributeValue(null, "selected"));
                            netProfileCreateNew.Preset = Boolean.parseBoolean(xmlPullParser.getAttributeValue(null, "preset"));
                            netProfileCreateNew.UpdateTime = m_dateFormat.parse(xmlPullParser.getAttributeValue(null, "update_time"));
                            s_default_profile = netProfileCreateNew;
                            netProfile = netProfileCreateNew;
                        }
                    } else if (xmlPullParser.getName().equals("param")) {
                        String attributeValue = xmlPullParser.getAttributeValue(null, "name");
                        String attributeValue2 = xmlPullParser.getAttributeValue(null, "value");
                        s_sortedParamList.add(attributeValue);
                        paramAddParam = netProfile.addParam(attributeValue, attributeValue2);
                    } else if (xmlPullParser.getName().equals("change")) {
                        int i = Integer.parseInt(xmlPullParser.getAttributeValue(null, "delta"));
                        int i2 = Integer.parseInt(xmlPullParser.getAttributeValue(null, "interval"));
                        int i3 = Integer.parseInt(xmlPullParser.getAttributeValue(null, "max"));
                        if (paramAddParam != null) {
                            paramAddParam.setChange(i, i2, i3);
                        }
                    } else {
                        xmlPullParser.getName().equals("NetTemplate");
                    }
                }
                eventType = xmlPullParser.next();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private List<NetProfile> getProposalParamsFromCache(File file) {
        ArrayList arrayList = new ArrayList();
        try {
            FileInputStream fileInputStream = new FileInputStream(file);
            XmlPullParser xmlPullParserNewPullParser = Xml.newPullParser();
            xmlPullParserNewPullParser.setInput(fileInputStream, "UTF-8");
            return parseNetProfiles(xmlPullParserNewPullParser);
        } catch (Exception e) {
            e.printStackTrace();
            return arrayList;
        }
    }

    public void writeProposalParamsToCache(List<NetProfile> list) {
        if (list == null) {
            return;
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(this.m_cache_xml, false);
            XmlSerializer xmlSerializerNewSerializer = Xml.newSerializer();
            xmlSerializerNewSerializer.setOutput(fileOutputStream, "UTF-8");
            xmlSerializerNewSerializer.startDocument("utf-8", true);
            xmlSerializerNewSerializer.startTag(null, "NetTemplate");
            for (int i = 0; i < list.size(); i++) {
                writeNetProfile(xmlSerializerNewSerializer, list.get(i));
            }
            xmlSerializerNewSerializer.endTag(null, "NetTemplate");
            xmlSerializerNewSerializer.endDocument();
            fileOutputStream.flush();
            fileOutputStream.close();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    private void writeNetProfile(XmlSerializer xmlSerializer, NetProfile netProfile) {
        try {
            xmlSerializer.startTag(null, "template");
            xmlSerializer.attribute(null, "name", netProfile.Name);
            xmlSerializer.attribute(null, "selected", Boolean.toString(netProfile.Selected));
            xmlSerializer.attribute(null, "preset", Boolean.toString(netProfile.Preset));
            xmlSerializer.attribute(null, SocialConstants.PARAM_APP_DESC, netProfile.Desc);
            xmlSerializer.attribute(null, "update_time", m_dateFormat.format(netProfile.UpdateTime));
            xmlSerializer.attribute(null, "id", netProfile.ID);
            for (int i = 0; i < s_sortedParamList.size(); i++) {
                String str = s_sortedParamList.get(i);
                NetProfile.Param param = netProfile.getParam(str);
                if (param == null) {
                    netProfile.addParam(str, "0");
                    param = netProfile.getParam(str);
                }
                writeNetProfileParam(xmlSerializer, param);
            }
            xmlSerializer.endTag(null, "template");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private void writeNetProfileParam(XmlSerializer xmlSerializer, NetProfile.Param param) {
        try {
            xmlSerializer.startTag(null, "param");
            xmlSerializer.attribute(null, "name", param.Name);
            xmlSerializer.attribute(null, "value", param.StringValue);
            if (param.getChange() != null) {
                xmlSerializer.startTag(null, "change");
                xmlSerializer.attribute(null, "delta", Integer.toString(param.getChange().Delta));
                xmlSerializer.attribute(null, "interval", Integer.toString(param.getChange().Interval));
                xmlSerializer.attribute(null, "max", Integer.toString(param.getChange().Max));
                xmlSerializer.endTag(null, "change");
            }
            xmlSerializer.endTag(null, "param");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void deleteTemplateXml() {
        try {
            if (this.m_cache_xml.exists()) {
                this.m_cache_xml.delete();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
