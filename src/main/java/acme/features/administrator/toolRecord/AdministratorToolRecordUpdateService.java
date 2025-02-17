
package acme.features.administrator.toolRecord;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.toolRecords.ToolRecord;
import acme.framework.components.Errors;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Administrator;
import acme.framework.services.AbstractUpdateService;

@Service
public class AdministratorToolRecordUpdateService implements AbstractUpdateService<Administrator, ToolRecord> {

	@Autowired
	private AdministratorToolRecordRepository repository;


	@Override
	public boolean authorise(final Request<ToolRecord> request) {
		assert request != null;

		return true;
	}

	@Override
	public void bind(final Request<ToolRecord> request, final ToolRecord entity, final Errors errors) {
		assert request != null;
		assert entity != null;
		assert errors != null;

		String[] activitySectors = this.repository.findCustomizationParameters().getActivitySectors().split(", ");
		request.getModel().setAttribute("activitySectors", activitySectors);

		request.bind(entity, errors);
	}

	@Override
	public void unbind(final Request<ToolRecord> request, final ToolRecord entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		String[] activitySectors = this.repository.findCustomizationParameters().getActivitySectors().split(", ");
		model.setAttribute("activitySectors", activitySectors);

		request.unbind(entity, model, "title", "activitySector", "inventorName", "description", "website", "email", "sourceType", "stars");
	}

	@Override
	public ToolRecord findOne(final Request<ToolRecord> request) {
		assert request != null;

		ToolRecord result;
		int id;

		id = request.getModel().getInteger("id");
		result = this.repository.findOneById(id);

		return result;
	}

	@Override
	public void validate(final Request<ToolRecord> request, final ToolRecord entity, final Errors errors) {
		assert request != null;
		assert entity != null;
		assert errors != null;

		if (!errors.hasErrors("sourceType")) {
			if (entity.getSourceType() == null) {
				errors.state(request, entity.getSourceType() != null, "sourceType", "administrator.tool-record.error.null");
			} else {
				errors.state(request, entity.getSourceType().equals("Open-Source") || entity.getSourceType().equals("Closed-Source"), "sourceType", "administrator.tool-record.error.source");
			}
		}
	}

	@Override
	public void update(final Request<ToolRecord> request, final ToolRecord entity) {
		assert request != null;
		assert entity != null;

		this.repository.save(entity);
	}

}
