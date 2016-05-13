package br.com.paulo.controlehoras.service;

import org.apache.velocity.app.VelocityEngine;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.mail.javamail.MimeMessageHelper;
import org.springframework.mail.javamail.MimeMessagePreparator;
import org.springframework.stereotype.Service;
import org.springframework.ui.velocity.VelocityEngineUtils;

import br.com.paulo.controlehoras.model.Usuario;
import br.com.paulo.controlehoras.utils.Context;

import javax.mail.internet.MimeMessage;
import javax.servlet.http.HttpServletRequest;

import java.util.HashMap;
import java.util.Map;

@Service
public class SimpleRegistrationService {

	@Autowired
	private JavaMailSender mailSender;
	
	@Autowired
	private VelocityEngine velocityEngine;

	public void setMailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}

	public void setVelocityEngine(VelocityEngine velocityEngine) {
		this.velocityEngine = velocityEngine;
	}

	public void register(Usuario usuario, HttpServletRequest request) {

		sendConfirmationEmail(usuario, request);
	}

	private void sendConfirmationEmail(final Usuario usuario, final HttpServletRequest request) {
		MimeMessagePreparator preparator = new MimeMessagePreparator() {
			public void prepare(MimeMessage mimeMessage) throws Exception {
				MimeMessageHelper message = new MimeMessageHelper(mimeMessage);
				message.setTo(usuario.getEmail());
				message.setSubject("Confirmação de cadastro - Controle Horas");
				message.setFrom("confirmacao@controlehoras.com.br");
				Map<String, Object> model = new HashMap<String, Object>();
				model.put("usuario", usuario);
				model.put("context", Context.getContextPath(request));
				String text = VelocityEngineUtils.mergeTemplateIntoString(velocityEngine, "template/registration-confirmation.vm", "UTF-8", model);
				message.setText(text, true);
			}
		};
		
		this.mailSender.send(preparator);
	}
}