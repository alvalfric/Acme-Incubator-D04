
package acme.entities.investmentRounds;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.Index;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;
import javax.validation.Valid;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.PastOrPresent;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.URL;

import acme.entities.accountingRecords.AccountingRecord;
import acme.entities.forums.Forum;
import acme.entities.roles.Entrepeneur;
import acme.framework.datatypes.Money;
import acme.framework.entities.DomainEntity;
import lombok.Getter;
import lombok.Setter;

@Entity
@Getter
@Setter
@Table(indexes = {
	@Index(columnList = "ticker"), @Index(columnList = "round")
})
public class InvestmentRound extends DomainEntity {

	private static final long					serialVersionUID	= 1L;

	@NotBlank
	@Pattern(regexp = "^([A-Z]{3}-\\d{2}-\\d{6})$")
	private String								ticker;

	@NotNull
	@PastOrPresent
	private Date								creation;

	//“SEED”, “ANGEL”, “SERIES-A”, “SERIES-B”, “SERIES-C”, “BRIDGE”.
	@NotBlank
	@Column(length = 256)
	@Length(max = 256)
	private String								round;

	@NotBlank
	@Column(length = 256)
	@Length(max = 256)
	private String								title;

	@NotBlank
	@Column(length = 4096)
	@Length(max = 4096)
	private String								description;

	@NotNull
	private Money								amount;

	@URL
	@Column(length = 2048)
	@Length(max = 2048)
	private String								link;

	//@NotNull
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "investmentRound")
	private Collection<@Valid Activity>			workProgramme;

	@OneToMany(mappedBy = "investmentRound")
	private Collection<@Valid Application>		application;

	@OneToOne(optional = false, mappedBy = "investmentRound")
	private Forum								forum;

	@OneToMany(mappedBy = "investmentRound")
	private Collection<@Valid AccountingRecord>	accountingRecords;

	@NotNull
	@Valid
	@ManyToOne(optional = false)
	private Entrepeneur							entrepeneur;
}
