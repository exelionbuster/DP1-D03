
package acme.entities.banners;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;

import org.hibernate.validator.constraints.URL;

import acme.entities.creditCards.CreditCard;
import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class Banner extends DomainEntity {

	/**
	 *
	 */
	private static final long	serialVersionUID	= 1L;

	@URL
	@NotBlank
	private String				picture;

	@NotBlank
	private String				slogan;

	@URL
	@NotBlank
	private String				target;

	// relation

	@Valid
	@ManyToOne(optional = true)
	private CreditCard			creditCard;

}
