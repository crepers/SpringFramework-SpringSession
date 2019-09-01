package com.crepers12.sample.session;

import org.springframework.session.web.context.AbstractHttpSessionApplicationInitializer;

public class Initializer extends AbstractHttpSessionApplicationInitializer {
	public Initializer() {
		super(Config.class);
	}
}