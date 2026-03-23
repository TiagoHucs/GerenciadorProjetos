package com.exemplo.demo.util;

import com.exemplo.demo.model.Versao;

public class Utils {

    public static Versao convert(String strVersao) {
        try {
            String[] partes = strVersao.split("-");
            String[] numero = partes[0].split("\\.");
            return new Versao(
                    Integer.parseInt(numero[0]),
                    Integer.parseInt(numero[1]),
                    Integer.parseInt(numero[2]),
                    partes.length > 1 && partes[1].equals("SNAPSHOT"));
        } catch (Exception e) {
            throw new RuntimeException("erro ao converter versao em texto: "+strVersao+" para objeto");
        }
    }
}
