# Challenge Service Index

&nbsp;

## Operations

### Challenge Configuration Wrapper:  [ChallengeConfiguration](../../services-api/pkg/service/challenge/challengeConfiguration.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/challenge/v1/admin/namespaces/{namespace}/challenges` | GET | AdminGetChallengesShort | [AdminGetChallengesShort](../../challenge-sdk/pkg/challengeclient/challenge_configuration/challenge_configuration_client.go) | [AdminGetChallengesShort](../../services-api/pkg/service/challenge/challengeConfiguration.go) | [AdminGetChallengesShort](../../samples/cli/cmd/challenge/challengeConfiguration/adminGetChallenges.go) |
| `/challenge/v1/admin/namespaces/{namespace}/challenges` | POST | AdminCreateChallengeShort | [AdminCreateChallengeShort](../../challenge-sdk/pkg/challengeclient/challenge_configuration/challenge_configuration_client.go) | [AdminCreateChallengeShort](../../services-api/pkg/service/challenge/challengeConfiguration.go) | [AdminCreateChallengeShort](../../samples/cli/cmd/challenge/challengeConfiguration/adminCreateChallenge.go) |
| `/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}` | GET | AdminGetChallengeShort | [AdminGetChallengeShort](../../challenge-sdk/pkg/challengeclient/challenge_configuration/challenge_configuration_client.go) | [AdminGetChallengeShort](../../services-api/pkg/service/challenge/challengeConfiguration.go) | [AdminGetChallengeShort](../../samples/cli/cmd/challenge/challengeConfiguration/adminGetChallenge.go) |
| `/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}` | PUT | AdminUpdateChallengeShort | [AdminUpdateChallengeShort](../../challenge-sdk/pkg/challengeclient/challenge_configuration/challenge_configuration_client.go) | [AdminUpdateChallengeShort](../../services-api/pkg/service/challenge/challengeConfiguration.go) | [AdminUpdateChallengeShort](../../samples/cli/cmd/challenge/challengeConfiguration/adminUpdateChallenge.go) |
| `/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}` | DELETE | AdminDeleteChallengeShort | [AdminDeleteChallengeShort](../../challenge-sdk/pkg/challengeclient/challenge_configuration/challenge_configuration_client.go) | [AdminDeleteChallengeShort](../../services-api/pkg/service/challenge/challengeConfiguration.go) | [AdminDeleteChallengeShort](../../samples/cli/cmd/challenge/challengeConfiguration/adminDeleteChallenge.go) |
| `/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/periods` | GET | AdminGetPeriodsShort | [AdminGetPeriodsShort](../../challenge-sdk/pkg/challengeclient/challenge_configuration/challenge_configuration_client.go) | [AdminGetPeriodsShort](../../services-api/pkg/service/challenge/challengeConfiguration.go) | [AdminGetPeriodsShort](../../samples/cli/cmd/challenge/challengeConfiguration/adminGetPeriods.go) |
| `/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/randomize` | POST | AdminRandomizeChallengeShort | [AdminRandomizeChallengeShort](../../challenge-sdk/pkg/challengeclient/challenge_configuration/challenge_configuration_client.go) | [AdminRandomizeChallengeShort](../../services-api/pkg/service/challenge/challengeConfiguration.go) | [AdminRandomizeChallengeShort](../../samples/cli/cmd/challenge/challengeConfiguration/adminRandomizeChallenge.go) |

### Goal Configuration Wrapper:  [GoalConfiguration](../../services-api/pkg/service/challenge/goalConfiguration.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals` | GET | AdminGetGoalsShort | [AdminGetGoalsShort](../../challenge-sdk/pkg/challengeclient/goal_configuration/goal_configuration_client.go) | [AdminGetGoalsShort](../../services-api/pkg/service/challenge/goalConfiguration.go) | [AdminGetGoalsShort](../../samples/cli/cmd/challenge/goalConfiguration/adminGetGoals.go) |
| `/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals` | POST | AdminCreateGoalShort | [AdminCreateGoalShort](../../challenge-sdk/pkg/challengeclient/goal_configuration/goal_configuration_client.go) | [AdminCreateGoalShort](../../services-api/pkg/service/challenge/goalConfiguration.go) | [AdminCreateGoalShort](../../samples/cli/cmd/challenge/goalConfiguration/adminCreateGoal.go) |
| `/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}` | GET | AdminGetGoalShort | [AdminGetGoalShort](../../challenge-sdk/pkg/challengeclient/goal_configuration/goal_configuration_client.go) | [AdminGetGoalShort](../../services-api/pkg/service/challenge/goalConfiguration.go) | [AdminGetGoalShort](../../samples/cli/cmd/challenge/goalConfiguration/adminGetGoal.go) |
| `/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}` | PUT | AdminUpdateGoalsShort | [AdminUpdateGoalsShort](../../challenge-sdk/pkg/challengeclient/goal_configuration/goal_configuration_client.go) | [AdminUpdateGoalsShort](../../services-api/pkg/service/challenge/goalConfiguration.go) | [AdminUpdateGoalsShort](../../samples/cli/cmd/challenge/goalConfiguration/adminUpdateGoals.go) |
| `/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}` | DELETE | AdminDeleteGoalShort | [AdminDeleteGoalShort](../../challenge-sdk/pkg/challengeclient/goal_configuration/goal_configuration_client.go) | [AdminDeleteGoalShort](../../services-api/pkg/service/challenge/goalConfiguration.go) | [AdminDeleteGoalShort](../../samples/cli/cmd/challenge/goalConfiguration/adminDeleteGoal.go) |

### Challenge Progression Wrapper:  [ChallengeProgression](../../services-api/pkg/service/challenge/challengeProgression.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/challenge/v1/admin/namespaces/{namespace}/progress/evaluate` | POST | AdminEvaluateProgressShort | [AdminEvaluateProgressShort](../../challenge-sdk/pkg/challengeclient/challenge_progression/challenge_progression_client.go) | [AdminEvaluateProgressShort](../../services-api/pkg/service/challenge/challengeProgression.go) | [AdminEvaluateProgressShort](../../samples/cli/cmd/challenge/challengeProgression/adminEvaluateProgress.go) |
| `/challenge/v1/public/namespaces/{namespace}/users/me/progress/evaluate` | POST | EvaluateMyProgressShort | [EvaluateMyProgressShort](../../challenge-sdk/pkg/challengeclient/challenge_progression/challenge_progression_client.go) | [EvaluateMyProgressShort](../../services-api/pkg/service/challenge/challengeProgression.go) | [EvaluateMyProgressShort](../../samples/cli/cmd/challenge/challengeProgression/evaluateMyProgress.go) |
| `/challenge/v1/public/namespaces/{namespace}/users/me/progress/{challengeCode}` | GET | PublicGetUserProgressionShort | [PublicGetUserProgressionShort](../../challenge-sdk/pkg/challengeclient/challenge_progression/challenge_progression_client.go) | [PublicGetUserProgressionShort](../../services-api/pkg/service/challenge/challengeProgression.go) | [PublicGetUserProgressionShort](../../samples/cli/cmd/challenge/challengeProgression/publicGetUserProgression.go) |

### Player Reward Wrapper:  [PlayerReward](../../services-api/pkg/service/challenge/playerReward.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/challenge/v1/admin/namespaces/{namespace}/users/{userId}/rewards` | GET | AdminGetUserRewardsShort | [AdminGetUserRewardsShort](../../challenge-sdk/pkg/challengeclient/player_reward/player_reward_client.go) | [AdminGetUserRewardsShort](../../services-api/pkg/service/challenge/playerReward.go) | [AdminGetUserRewardsShort](../../samples/cli/cmd/challenge/playerReward/adminGetUserRewards.go) |
| `/challenge/v1/public/namespaces/{namespace}/users/me/rewards` | GET | PublicGetUserRewardsShort | [PublicGetUserRewardsShort](../../challenge-sdk/pkg/challengeclient/player_reward/player_reward_client.go) | [PublicGetUserRewardsShort](../../services-api/pkg/service/challenge/playerReward.go) | [PublicGetUserRewardsShort](../../samples/cli/cmd/challenge/playerReward/publicGetUserRewards.go) |
| `/challenge/v1/public/namespaces/{namespace}/users/me/rewards/claim` | POST | PublicClaimUserRewardsShort | [PublicClaimUserRewardsShort](../../challenge-sdk/pkg/challengeclient/player_reward/player_reward_client.go) | [PublicClaimUserRewardsShort](../../services-api/pkg/service/challenge/playerReward.go) | [PublicClaimUserRewardsShort](../../samples/cli/cmd/challenge/playerReward/publicClaimUserRewards.go) |

### Challenge List Wrapper:  [ChallengeList](../../services-api/pkg/service/challenge/challengeList.go)
| Endpoint | Method | ID | Class | Wrapper | Example |
|---|---|---|---|---|---|
| `/challenge/v1/public/namespaces/{namespace}/challenges` | GET | GetChallengesShort | [GetChallengesShort](../../challenge-sdk/pkg/challengeclient/challenge_list/challenge_list_client.go) | [GetChallengesShort](../../services-api/pkg/service/challenge/challengeList.go) | [GetChallengesShort](../../samples/cli/cmd/challenge/challengeList/getChallenges.go) |
| `/challenge/v1/public/namespaces/{namespace}/challenges/{challengeCode}/goals` | GET | PublicGetScheduledGoalsShort | [PublicGetScheduledGoalsShort](../../challenge-sdk/pkg/challengeclient/challenge_list/challenge_list_client.go) | [PublicGetScheduledGoalsShort](../../services-api/pkg/service/challenge/challengeList.go) | [PublicGetScheduledGoalsShort](../../samples/cli/cmd/challenge/challengeList/publicGetScheduledGoals.go) |


&nbsp;  

## Models

| Model Struct | Class |
|---|---|
| `iam.ErrorResponse` | [IamErrorResponse ](../../challenge-sdk/pkg/challengeclientmodels/iam_error_response.go) |
| `model.ChallengeResponse` | [ModelChallengeResponse ](../../challenge-sdk/pkg/challengeclientmodels/model_challenge_response.go) |
| `model.ClaimUserRewardsReq` | [ModelClaimUserRewardsReq ](../../challenge-sdk/pkg/challengeclientmodels/model_claim_user_rewards_req.go) |
| `model.CreateChallengeRequest` | [ModelCreateChallengeRequest ](../../challenge-sdk/pkg/challengeclientmodels/model_create_challenge_request.go) |
| `model.CreateGoalRequest` | [ModelCreateGoalRequest ](../../challenge-sdk/pkg/challengeclientmodels/model_create_goal_request.go) |
| `model.EvaluatePlayerProgressionRequest` | [ModelEvaluatePlayerProgressionRequest ](../../challenge-sdk/pkg/challengeclientmodels/model_evaluate_player_progression_request.go) |
| `model.GetGoalsResponse` | [ModelGetGoalsResponse ](../../challenge-sdk/pkg/challengeclientmodels/model_get_goals_response.go) |
| `model.GoalOrder` | [ModelGoalOrder ](../../challenge-sdk/pkg/challengeclientmodels/model_goal_order.go) |
| `model.GoalProgressionResponse` | [ModelGoalProgressionResponse ](../../challenge-sdk/pkg/challengeclientmodels/model_goal_progression_response.go) |
| `model.GoalResponse` | [ModelGoalResponse ](../../challenge-sdk/pkg/challengeclientmodels/model_goal_response.go) |
| `model.GoalSchedule` | [ModelGoalSchedule ](../../challenge-sdk/pkg/challengeclientmodels/model_goal_schedule.go) |
| `model.ListChallengeResponse` | [ModelListChallengeResponse ](../../challenge-sdk/pkg/challengeclientmodels/model_list_challenge_response.go) |
| `model.ListPeriodsResponse` | [ModelListPeriodsResponse ](../../challenge-sdk/pkg/challengeclientmodels/model_list_periods_response.go) |
| `model.ListUserRewardsResponse` | [ModelListUserRewardsResponse ](../../challenge-sdk/pkg/challengeclientmodels/model_list_user_rewards_response.go) |
| `model.Pagination` | [ModelPagination ](../../challenge-sdk/pkg/challengeclientmodels/model_pagination.go) |
| `model.Predicate` | [ModelPredicate ](../../challenge-sdk/pkg/challengeclientmodels/model_predicate.go) |
| `model.Requirement` | [ModelRequirement ](../../challenge-sdk/pkg/challengeclientmodels/model_requirement.go) |
| `model.RequirementProgressionResponse` | [ModelRequirementProgressionResponse ](../../challenge-sdk/pkg/challengeclientmodels/model_requirement_progression_response.go) |
| `model.Reward` | [ModelReward ](../../challenge-sdk/pkg/challengeclientmodels/model_reward.go) |
| `model.Schedule` | [ModelSchedule ](../../challenge-sdk/pkg/challengeclientmodels/model_schedule.go) |
| `model.UpdateGoalRequest` | [ModelUpdateGoalRequest ](../../challenge-sdk/pkg/challengeclientmodels/model_update_goal_request.go) |
| `model.UserProgressionResponse` | [ModelUserProgressionResponse ](../../challenge-sdk/pkg/challengeclientmodels/model_user_progression_response.go) |
| `model.UserProgressionResponseMeta` | [ModelUserProgressionResponseMeta ](../../challenge-sdk/pkg/challengeclientmodels/model_user_progression_response_meta.go) |
| `model.UserReward` | [ModelUserReward ](../../challenge-sdk/pkg/challengeclientmodels/model_user_reward.go) |
| `models.Period` | [ModelsPeriod ](../../challenge-sdk/pkg/challengeclientmodels/models_period.go) |
| `models.UpdateChallengeRequest` | [ModelsUpdateChallengeRequest ](../../challenge-sdk/pkg/challengeclientmodels/models_update_challenge_request.go) |
| `response.Error` | [ResponseError ](../../challenge-sdk/pkg/challengeclientmodels/response_error.go) |
