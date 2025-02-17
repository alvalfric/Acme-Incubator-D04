
package acme.features.authenticated.challenge;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import acme.entities.challenges.Challenge;
import acme.framework.components.Model;
import acme.framework.components.Request;
import acme.framework.entities.Authenticated;
import acme.framework.services.AbstractShowService;

@Service
public class AuthenticatedChallengeShowService implements AbstractShowService<Authenticated, Challenge> {

	@Autowired
	private AuthenticatedChallengeRepository repository;


	@Override
	public boolean authorise(final Request<Challenge> request) {
		assert request != null;

		return true;
	}

	@Override
	public void unbind(final Request<Challenge> request, final Challenge entity, final Model model) {
		assert request != null;
		assert entity != null;
		assert model != null;

		model.setAttribute("rookieGoalReward", entity.getRookieGoalReward());
		model.setAttribute("averageGoalReward", entity.getAverageGoalReward());
		model.setAttribute("expertGoalReward", entity.getExpertGoalReward());

		request.unbind(entity, model, "title", "deadline", "description", "rookieGoal", "rookieGoal", "averageGoal", "averageGoal", "expertGoal", "expertGoal");
	}

	@Override
	public Challenge findOne(final Request<Challenge> request) {
		assert request != null;

		Challenge result;
		int id;

		id = request.getModel().getInteger("id");
		result = this.repository.findOneByIdActive(id);

		return result;
	}

}
