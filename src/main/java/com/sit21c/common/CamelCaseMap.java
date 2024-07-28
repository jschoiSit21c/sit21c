package com.sit21c.common;

import java.util.HashMap;

/**
 * VO를 사용하지 않고 Map을 사용하여 CamelCase로 값을 받을 때 이 custom Map 사용
 * 
 */
public class CamelCaseMap extends HashMap<String, Object> {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	@Override
	public Object put(String key, Object value) {
		return super.put(convertToCamelCase(key), value);
	}
	
    private String convertToCamelCase(String underscore) {
        StringBuilder result = new StringBuilder();
        boolean nextIsUpper = false;

        for (char c : underscore.toCharArray()) {
            if (c == '_') {
                nextIsUpper = true;
            } else {
                if (nextIsUpper) {
                    result.append(Character.toUpperCase(c));
                    nextIsUpper = false;
                } else {
                    result.append(Character.toLowerCase(c));
                }
            }
        }
        return result.toString();
    }
}
