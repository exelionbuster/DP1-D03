
package acme.features.administrator.creditCard;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.creditCards.CreditCard;
import acme.framework.components.Errors;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Administrator;
import acme.framework.services.AbstractCreateService;

@Service
public class AdministratorCreditCardCreateService implements AbstractCreateService<Administrator, CreditCard> {

	@Autowired
	AdministratorCreditCardRepository repository;


	@Override
	public boolean authorise(final Request<CreditCard> request) {
		assert request != null;
		return true;
	}

	@Override
	public void bind(final Request<CreditCard> request, final CreditCard entity, final Errors errors) {
		assert request != null;
		assert entity != null;
		assert errors != null;

		request.bind(entity, errors);
	}

	@Override
	public void unbind(final Request<CreditCard> request, final CreditCard entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		request.unbind(entity, model, "holderName", "number", "brand", "expirationDate", "cvv");

	}

	@Override
	public CreditCard instantiate(final Request<CreditCard> request) {

		CreditCard res;

		res = new CreditCard();

		return res;

	}

	@Override
	public void validate(final Request<CreditCard> request, final CreditCard entity, final Errors errors) {
		assert request != null;
		assert entity != null;
		assert errors != null;

		Date now = new Date(System.currentTimeMillis());
		if (!errors.hasErrors("expirationDate")) {
			Boolean isAfter = entity.getExpirationDate().after(now);
			errors.state(request, isAfter, "expirationDate", "administrator.credit-card.form.error.past-expiration-date");
		}

	}

	@Override
	public void create(final Request<CreditCard> request, final CreditCard entity) {
		assert request != null;
		assert entity != null;

		this.repository.save(entity);

	}

}
