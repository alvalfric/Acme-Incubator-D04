
package acme.entities.creditCards;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.validation.constraints.NotBlank;

import org.hibernate.validator.constraints.Length;

import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class CreditCard extends DomainEntity {

	private static final long	serialVersionUID	= 1L;

	@NotBlank
	@Column(length = 60)
	@Length(max = 60)
	private String				holderName;

	@NotBlank
	@Column(length = 16)
	@Length(max = 16)
	private String				number;

	@NotBlank
	@Column(length = 60)
	@Length(max = 60)
	private String				brand;

	@NotBlank
	@Column(length = 7)
	@Length(max = 7)
	private String				expirationDate;

	@NotBlank
	@Column(length = 4)
	@Length(max = 4)
	private String				CVV;
}
