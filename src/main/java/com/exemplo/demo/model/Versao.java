package com.exemplo.demo.model;

public class Versao {
    public int major;
    public int minor;
    public int patch;
    public boolean snapshot;

    public Versao(int major, int minor, int patch, boolean snapshot){
        this.major = major;
        this.minor = minor;
        this.patch = patch;
        this.snapshot = snapshot;
    }
}
