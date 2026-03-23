package com.exemplo.demo.util;

import com.exemplo.demo.model.Versao;
import junit.framework.Assert;
import junit.framework.TestCase;

public class UtilsTest extends TestCase {

    public void testConvertSnap() {
        Versao versao = Utils.convert("2.4.5-SNAPSHOT");
        Assert.assertEquals(2,versao.major);
        Assert.assertEquals(4,versao.minor);
        Assert.assertEquals(5,versao.patch);
        Assert.assertEquals(true,versao.snapshot);
    }

    public void testConvertNoSnap() {
        Versao versao = Utils.convert("3.0.1");
        Assert.assertEquals(3,versao.major);
        Assert.assertEquals(0,versao.minor);
        Assert.assertEquals(1,versao.patch);
        Assert.assertEquals(false,versao.snapshot);
    }
}