package jappan.util;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

public class ConfigLoaders {
	private Properties properties = null;
	private static ConfigLoaders instance = null;
	String proFileName = "configs.properties";

	private ConfigLoaders() {
		InputStream inputStream = getClass().getClassLoader().getResourceAsStream(proFileName);
		if (inputStream != null) {
			properties = new Properties();
			try {
				properties.load(inputStream);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	public static ConfigLoaders getInstance() {
		if (instance == null) {
			// synchronized (ConfigLoader.class) {
			instance = new ConfigLoaders();
			// }
		}
		return instance;

	}
	public String getValue(String key) {
		if(properties.containsKey(key)) {
			return properties.getProperty(key);
		}
		return null;
	}
}
