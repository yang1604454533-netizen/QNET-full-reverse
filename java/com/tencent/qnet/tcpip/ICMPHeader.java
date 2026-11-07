package com.tencent.qnet.tcpip;

import com.mysql.jdbc.Buffer;
import com.mysql.jdbc.StatementImpl;

/* JADX INFO: loaded from: classes.dex */
public class ICMPHeader {
    static final short offset_checksum = 2;
    static final short offset_code = 1;
    static final short offset_id = 4;
    static final short offset_seq = 6;
    static final short offset_timestamp = 8;
    static final short offset_type = 0;
    public byte[] m_data;
    public int m_offset;

    public ICMPHeader(byte[] bArr, int i) {
        this.m_data = bArr;
        this.m_offset = i;
    }

    public byte getType() {
        return this.m_data[this.m_offset + 0];
    }

    public void setType(byte b) {
        this.m_data[this.m_offset + 0] = b;
    }

    public byte getCode() {
        return this.m_data[this.m_offset + 1];
    }

    public void setCode(byte b) {
        this.m_data[this.m_offset + 1] = b;
    }

    public short getCrc() {
        return CommonMethods.readShort(this.m_data, this.m_offset + 2);
    }

    public void setCrc(short s) {
        CommonMethods.writeShort(this.m_data, this.m_offset + 2, s);
    }

    public short getId() {
        return CommonMethods.readShort(this.m_data, this.m_offset + 4);
    }

    public void setId(short s) {
        CommonMethods.writeShort(this.m_data, this.m_offset + 4, s);
    }

    public short getSeq() {
        return CommonMethods.readShort(this.m_data, this.m_offset + 6);
    }

    public void setSeq(short s) {
        CommonMethods.writeShort(this.m_data, this.m_offset + 6, s);
    }

    public String toString() {
        return String.format("type: %d, code: %d, id: %d, seq: %d", Integer.valueOf(getType() & StatementImpl.USES_VARIABLES_UNKNOWN), Integer.valueOf(getCode() & StatementImpl.USES_VARIABLES_UNKNOWN), Integer.valueOf(getId() & Buffer.TYPE_ID_ERROR), Integer.valueOf(getSeq() & Buffer.TYPE_ID_ERROR));
    }
}
