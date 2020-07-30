
package acme.entities.investmentRounds;

import java.util.Date;
import java.util.List;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.PastOrPresent;
import javax.validation.constraints.Pattern;

import acme.entities.accountingRecords.AccountingRecord;
import acme.entities.roles.Entrepeneur;
import acme.framework.datatypes.Money;
import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
public class InvestmentRound extends DomainEntity {

	private static final long				serialVersionUID	= 1L;

	@NotBlank
	@Pattern(regexp = "^([A-Z]{3}-\\d{2}-\\d{6})$")
	private String							ticker;

	@NotNull
	@PastOrPresent
	private Date							creation;

	//“SEED”, “ANGEL”, “SERIES-A”, “SERIES-B”, “SERIES-C”, “BRIDGE”.
	@NotBlank
	private String							round;

	@NotBlank
	private String							title;

	@NotBlank
	private String							description;

	@NotNull
	private Money							amount;

	private String							link;

	//@NotNull
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "investmentRound")
	private List<@Valid Activity>			workProgramme;

	@OneToMany(mappedBy = "investmentRound")
	private List<@Valid Application>		application;

	//@NotNull
	@OneToMany(mappedBy = "investmentRound")
	private List<@Valid ForumMessage>		forum;

	@OneToMany(mappedBy = "investmentRound")
	private List<@Valid AccountingRecord>	accountingRecords;

	@NotNull
	@Valid
	@ManyToOne(optional = false)
	private Entrepeneur						entrepeneur;
}
