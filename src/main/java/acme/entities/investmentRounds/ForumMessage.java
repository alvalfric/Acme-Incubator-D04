
package acme.entities.investmentRounds;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import acme.framework.entities.Authenticated;
import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class ForumMessage extends DomainEntity {

	private static final long	serialVersionUID	= 1L;

	@NotBlank
	private String				forum;

	@NotBlank
	private String				title;

	@NotNull
	private Date				creation;

	private String				tags;

	@NotBlank
	private String				body;

	@NotNull
	@Valid
	@ManyToOne(optional = false)
	private InvestmentRound		investmentRound;

	@NotNull
	@Valid
	@OneToOne(optional = false)
	private Authenticated		authenticated;
}
