// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package goal_configuration

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new goal configuration API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for goal configuration API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	AdminGetGoals(params *AdminGetGoalsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGoalsOK, *AdminGetGoalsUnauthorized, *AdminGetGoalsForbidden, *AdminGetGoalsNotFound, *AdminGetGoalsInternalServerError, error)
	AdminGetGoalsShort(params *AdminGetGoalsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGoalsOK, error)
	AdminCreateGoal(params *AdminCreateGoalParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateGoalCreated, *AdminCreateGoalBadRequest, *AdminCreateGoalUnauthorized, *AdminCreateGoalForbidden, *AdminCreateGoalNotFound, *AdminCreateGoalConflict, *AdminCreateGoalUnprocessableEntity, *AdminCreateGoalInternalServerError, error)
	AdminCreateGoalShort(params *AdminCreateGoalParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateGoalCreated, error)
	AdminGetGoal(params *AdminGetGoalParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGoalOK, *AdminGetGoalUnauthorized, *AdminGetGoalForbidden, *AdminGetGoalNotFound, *AdminGetGoalInternalServerError, error)
	AdminGetGoalShort(params *AdminGetGoalParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGoalOK, error)
	AdminUpdateGoals(params *AdminUpdateGoalsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateGoalsOK, *AdminUpdateGoalsBadRequest, *AdminUpdateGoalsNotFound, *AdminUpdateGoalsUnprocessableEntity, *AdminUpdateGoalsInternalServerError, error)
	AdminUpdateGoalsShort(params *AdminUpdateGoalsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateGoalsOK, error)
	AdminDeleteGoal(params *AdminDeleteGoalParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteGoalNoContent, *AdminDeleteGoalBadRequest, *AdminDeleteGoalNotFound, *AdminDeleteGoalInternalServerError, error)
	AdminDeleteGoalShort(params *AdminDeleteGoalParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteGoalNoContent, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use AdminGetGoalsShort instead.

AdminGetGoals list goals of a challenge
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]
*/
func (a *Client) AdminGetGoals(params *AdminGetGoalsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGoalsOK, *AdminGetGoalsUnauthorized, *AdminGetGoalsForbidden, *AdminGetGoalsNotFound, *AdminGetGoalsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetGoalsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetGoals",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetGoalsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetGoalsOK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetGoalsUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *AdminGetGoalsForbidden:
		return nil, nil, v, nil, nil, nil

	case *AdminGetGoalsNotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminGetGoalsInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetGoalsShort list goals of a challenge
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]
*/
func (a *Client) AdminGetGoalsShort(params *AdminGetGoalsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGoalsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetGoalsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetGoals",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetGoalsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetGoalsOK:
		return v, nil
	case *AdminGetGoalsUnauthorized:
		return nil, v
	case *AdminGetGoalsForbidden:
		return nil, v
	case *AdminGetGoalsNotFound:
		return nil, v
	case *AdminGetGoalsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminCreateGoalShort instead.

AdminCreateGoal create new goal
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [CREATE]
Request body:
- code: unique within a challenge.
- name: name of the goal.
- description: text describing the goal (optional).
- schedule: a time range that indicated the availability of a goal within a timeframe. Used in FIXED assignment rule, this will be required in that case.
- requirementGroups: contains array of objects consisting of operator and predicates attribute. When requirements evaluation happened, each item's predicates will be evaluated first, by operating the predicates with given operator.
After all items evaluated, the results of the evaluation on each item then will be logically evaluated using OR operator.
- operator: logical operator used to validate the completion of a goal. a goal is considered complete once complete predicates operated with operator result in true.
- predicates: list of progression parameters to be tracked.
- parameterType: the type of parameter for challenge to be progressed with. the available options are:
- STATISTIC: progress by user statistic item value.
- STATISTIC_CYCLE: progress user statistic cycle item value. statCycleId must be included.
- ACHIEVEMENT: progress by user achievement.
- USERACCOUNT: progress by user account event.
- ENTITLEMENT: progress by user's item entitlement ownership. Supported item types are APP, CODE, INGAMEITEM, LOOTBOX, MEDIA, and OPTIONBOX.
- parameterName: the name of the parameter for challenge to be progressed with.
- STATISTIC: refers to stat code.
- STATISTIC_CYCLE: refers to stat code with statCycleId must be included.
- ACHIEVEMENT: refers to achievement code.
- USERACCOUNT: refers to a specific event related to user accounts. The current possible events include: userAccountCreated, gameUserAccountCreated, userAccountVerified, userAccountLinked, userAccountUpgraded, thirdPartyAccountCreated, userLoggedIn, userThirdPartyLoggedIn and fullAccount.
- For the **userAccountLinked** event, **parameterName** will utilize **platformId** rather than the event name. This will be validated against the list of active third-party accounts configuration within the namespace, such as *psn*, *steam*, or *device*.
- ENTITLEMENT: ecommerce store's item SKU.
- matcher: the comparison operator used to compare the current value of a parameter and targetValue to validate the completion of a predicate. Possible values are EQUAL, LESS_THAN, GREATER_THAN, LESS_THAN_EQUAL, and GREATER_THAN_EQUAL.
- targetValue: the target number to be reached by the parameter.
- statCycleId: specify the statCycleId used to track statistic value in a cycle with STATISTIC_CYCLE parameterType (optional).
- rewards: list of rewards that will be claimable once a goal is complete.
- tags: goal's labels.
- isActive: when goal is in a schedule, isActive determine whether goal is active to progress or not.
Goal describe set of requirements that need to be fulfilled by players in order to complete it and describe what is the rewards given to player when they complete the goal.
The requirement will have target value and a operator that will evaluate that against an observable playerâs attribute (e.g. statistic, entitlement). Goal belongs to a challenge.
Supported item type for ENTITLEMENT reward type: APP, BUNDLE, CODE, COINS, EXTENSION, INGAMEITEM, LOOTBOX, MEDIA, OPTIONBOX.
Number of goals per challenge is **limited to 100 goals**.
*/
func (a *Client) AdminCreateGoal(params *AdminCreateGoalParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateGoalCreated, *AdminCreateGoalBadRequest, *AdminCreateGoalUnauthorized, *AdminCreateGoalForbidden, *AdminCreateGoalNotFound, *AdminCreateGoalConflict, *AdminCreateGoalUnprocessableEntity, *AdminCreateGoalInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateGoalParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminCreateGoal",
		Method:             "POST",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateGoalReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminCreateGoalCreated:
		return v, nil, nil, nil, nil, nil, nil, nil, nil

	case *AdminCreateGoalBadRequest:
		return nil, v, nil, nil, nil, nil, nil, nil, nil

	case *AdminCreateGoalUnauthorized:
		return nil, nil, v, nil, nil, nil, nil, nil, nil

	case *AdminCreateGoalForbidden:
		return nil, nil, nil, v, nil, nil, nil, nil, nil

	case *AdminCreateGoalNotFound:
		return nil, nil, nil, nil, v, nil, nil, nil, nil

	case *AdminCreateGoalConflict:
		return nil, nil, nil, nil, nil, v, nil, nil, nil

	case *AdminCreateGoalUnprocessableEntity:
		return nil, nil, nil, nil, nil, nil, v, nil, nil

	case *AdminCreateGoalInternalServerError:
		return nil, nil, nil, nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminCreateGoalShort create new goal
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [CREATE]
Request body:
- code: unique within a challenge.
- name: name of the goal.
- description: text describing the goal (optional).
- schedule: a time range that indicated the availability of a goal within a timeframe. Used in FIXED assignment rule, this will be required in that case.
- requirementGroups: contains array of objects consisting of operator and predicates attribute. When requirements evaluation happened, each item's predicates will be evaluated first, by operating the predicates with given operator.
After all items evaluated, the results of the evaluation on each item then will be logically evaluated using OR operator.
- operator: logical operator used to validate the completion of a goal. a goal is considered complete once complete predicates operated with operator result in true.
- predicates: list of progression parameters to be tracked.
- parameterType: the type of parameter for challenge to be progressed with. the available options are:
- STATISTIC: progress by user statistic item value.
- STATISTIC_CYCLE: progress user statistic cycle item value. statCycleId must be included.
- ACHIEVEMENT: progress by user achievement.
- USERACCOUNT: progress by user account event.
- ENTITLEMENT: progress by user's item entitlement ownership. Supported item types are APP, CODE, INGAMEITEM, LOOTBOX, MEDIA, and OPTIONBOX.
- parameterName: the name of the parameter for challenge to be progressed with.
- STATISTIC: refers to stat code.
- STATISTIC_CYCLE: refers to stat code with statCycleId must be included.
- ACHIEVEMENT: refers to achievement code.
- USERACCOUNT: refers to a specific event related to user accounts. The current possible events include: userAccountCreated, gameUserAccountCreated, userAccountVerified, userAccountLinked, userAccountUpgraded, thirdPartyAccountCreated, userLoggedIn, userThirdPartyLoggedIn and fullAccount.
- For the **userAccountLinked** event, **parameterName** will utilize **platformId** rather than the event name. This will be validated against the list of active third-party accounts configuration within the namespace, such as *psn*, *steam*, or *device*.
- ENTITLEMENT: ecommerce store's item SKU.
- matcher: the comparison operator used to compare the current value of a parameter and targetValue to validate the completion of a predicate. Possible values are EQUAL, LESS_THAN, GREATER_THAN, LESS_THAN_EQUAL, and GREATER_THAN_EQUAL.
- targetValue: the target number to be reached by the parameter.
- statCycleId: specify the statCycleId used to track statistic value in a cycle with STATISTIC_CYCLE parameterType (optional).
- rewards: list of rewards that will be claimable once a goal is complete.
- tags: goal's labels.
- isActive: when goal is in a schedule, isActive determine whether goal is active to progress or not.
Goal describe set of requirements that need to be fulfilled by players in order to complete it and describe what is the rewards given to player when they complete the goal.
The requirement will have target value and a operator that will evaluate that against an observable playerâs attribute (e.g. statistic, entitlement). Goal belongs to a challenge.
Supported item type for ENTITLEMENT reward type: APP, BUNDLE, CODE, COINS, EXTENSION, INGAMEITEM, LOOTBOX, MEDIA, OPTIONBOX.
Number of goals per challenge is **limited to 100 goals**.
*/
func (a *Client) AdminCreateGoalShort(params *AdminCreateGoalParams, authInfo runtime.ClientAuthInfoWriter) (*AdminCreateGoalCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminCreateGoalParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminCreateGoal",
		Method:             "POST",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminCreateGoalReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminCreateGoalCreated:
		return v, nil
	case *AdminCreateGoalBadRequest:
		return nil, v
	case *AdminCreateGoalUnauthorized:
		return nil, v
	case *AdminCreateGoalForbidden:
		return nil, v
	case *AdminCreateGoalNotFound:
		return nil, v
	case *AdminCreateGoalConflict:
		return nil, v
	case *AdminCreateGoalUnprocessableEntity:
		return nil, v
	case *AdminCreateGoalInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminGetGoalShort instead.

AdminGetGoal get goal
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]
*/
func (a *Client) AdminGetGoal(params *AdminGetGoalParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGoalOK, *AdminGetGoalUnauthorized, *AdminGetGoalForbidden, *AdminGetGoalNotFound, *AdminGetGoalInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetGoalParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetGoal",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetGoalReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminGetGoalOK:
		return v, nil, nil, nil, nil, nil

	case *AdminGetGoalUnauthorized:
		return nil, v, nil, nil, nil, nil

	case *AdminGetGoalForbidden:
		return nil, nil, v, nil, nil, nil

	case *AdminGetGoalNotFound:
		return nil, nil, nil, v, nil, nil

	case *AdminGetGoalInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminGetGoalShort get goal
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [READ]
*/
func (a *Client) AdminGetGoalShort(params *AdminGetGoalParams, authInfo runtime.ClientAuthInfoWriter) (*AdminGetGoalOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminGetGoalParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminGetGoal",
		Method:             "GET",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminGetGoalReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminGetGoalOK:
		return v, nil
	case *AdminGetGoalUnauthorized:
		return nil, v
	case *AdminGetGoalForbidden:
		return nil, v
	case *AdminGetGoalNotFound:
		return nil, v
	case *AdminGetGoalInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminUpdateGoalsShort instead.

AdminUpdateGoals update goal
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]
### Request body:
- name: name of the goal.
- description: text describing the goal (optional).
- schedule: a time range that indicated the availability of a goal within a timeframe. Used in FIXED assignment rule, this will be required in that case.
- requirementGroups: contains array of objects consisting of operator and predicates attribute. When requirements evaluation happened, each item's predicates will be evaluated first, by operating the predicates with given operator. After all items evaluated, the results of the evaluation on each item then will be logically evaluated using OR operator.
- operator: logical operator used to validate the completion of a goal. a goal is considered complete once complete predicates operated with operator result in true.
- predicates: list of progression parameters to be tracked.
- parameterType: the type of parameter for challenge to be progressed with. the available options are:
- STATISTIC: progress by user statistic item value.
- STATISTIC_CYCLE: progress user statistic cycle item value. statCycleId must be included.
- ACHIEVEMENT: progress by user achievement.
- USERACCOUNT: progress by user account event.
- ENTITLEMENT: progress by user's item entitlement ownership. Supported item types are APP, CODE, INGAMEITEM, LOOTBOX, MEDIA, and OPTIONBOX.
- parameterName: the name of the parameter for challenge to be progressed with.
- STATISTIC: refers to stat code.
- STATISTIC_CYCLE: refers to stat code with statCycleId must be included.
- ACHIEVEMENT: refers to achievement code.
- USERACCOUNT: one of the user account event. Current possible values are (userAccountCreated, gameUserAccountCreated, userAccountVerified, userAccountLinked, userAccountUpgraded,thirdPartyAccountCreated).
- ENTITLEMENT: ecommerce store's item SKU.
- matcher: the comparison operator used to compare the curent value of a parameter and targetValue to validate the completion of a predicate. Possible values are EQUAL, LESS_THAN, GREATER_THAN, LESS_THAN_EQUAL, and GREATER_THAN_EQUAL.
- targetValue: the target number to be reached by the parameter.
- statCycleId: specify the statCycleId used to track statistic value in a cycle with STATISTIC_CYCLE parameterType (optional).
- rewards: list of rewards that will be claimable once a goal is complete.
- tags: goal's labels.
- isActive: when goal is in a schedule, isActive determine whether goal is active to progress or not (optional).
Goal describe set of requirements that need to be fulfilled by players in order to complete it and describe what is the rewards given to player when they complete the goal.
The requirement will have target value and a operator that will evaluate that against an observable playerâs attribute (e.g. statistic, entitlement). Goal belongs to a challenge.
Supported item type for ENTITLEMENT reward type: APP, BUNDLE, CODE, COINS, EXTENSION, INGAMEITEM, LOOTBOX, MEDIA, OPTIONBOX
*/
func (a *Client) AdminUpdateGoals(params *AdminUpdateGoalsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateGoalsOK, *AdminUpdateGoalsBadRequest, *AdminUpdateGoalsNotFound, *AdminUpdateGoalsUnprocessableEntity, *AdminUpdateGoalsInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateGoalsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateGoals",
		Method:             "PUT",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateGoalsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateGoalsOK:
		return v, nil, nil, nil, nil, nil

	case *AdminUpdateGoalsBadRequest:
		return nil, v, nil, nil, nil, nil

	case *AdminUpdateGoalsNotFound:
		return nil, nil, v, nil, nil, nil

	case *AdminUpdateGoalsUnprocessableEntity:
		return nil, nil, nil, v, nil, nil

	case *AdminUpdateGoalsInternalServerError:
		return nil, nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminUpdateGoalsShort update goal
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [UPDATE]
### Request body:
- name: name of the goal.
- description: text describing the goal (optional).
- schedule: a time range that indicated the availability of a goal within a timeframe. Used in FIXED assignment rule, this will be required in that case.
- requirementGroups: contains array of objects consisting of operator and predicates attribute. When requirements evaluation happened, each item's predicates will be evaluated first, by operating the predicates with given operator. After all items evaluated, the results of the evaluation on each item then will be logically evaluated using OR operator.
- operator: logical operator used to validate the completion of a goal. a goal is considered complete once complete predicates operated with operator result in true.
- predicates: list of progression parameters to be tracked.
- parameterType: the type of parameter for challenge to be progressed with. the available options are:
- STATISTIC: progress by user statistic item value.
- STATISTIC_CYCLE: progress user statistic cycle item value. statCycleId must be included.
- ACHIEVEMENT: progress by user achievement.
- USERACCOUNT: progress by user account event.
- ENTITLEMENT: progress by user's item entitlement ownership. Supported item types are APP, CODE, INGAMEITEM, LOOTBOX, MEDIA, and OPTIONBOX.
- parameterName: the name of the parameter for challenge to be progressed with.
- STATISTIC: refers to stat code.
- STATISTIC_CYCLE: refers to stat code with statCycleId must be included.
- ACHIEVEMENT: refers to achievement code.
- USERACCOUNT: one of the user account event. Current possible values are (userAccountCreated, gameUserAccountCreated, userAccountVerified, userAccountLinked, userAccountUpgraded,thirdPartyAccountCreated).
- ENTITLEMENT: ecommerce store's item SKU.
- matcher: the comparison operator used to compare the curent value of a parameter and targetValue to validate the completion of a predicate. Possible values are EQUAL, LESS_THAN, GREATER_THAN, LESS_THAN_EQUAL, and GREATER_THAN_EQUAL.
- targetValue: the target number to be reached by the parameter.
- statCycleId: specify the statCycleId used to track statistic value in a cycle with STATISTIC_CYCLE parameterType (optional).
- rewards: list of rewards that will be claimable once a goal is complete.
- tags: goal's labels.
- isActive: when goal is in a schedule, isActive determine whether goal is active to progress or not (optional).
Goal describe set of requirements that need to be fulfilled by players in order to complete it and describe what is the rewards given to player when they complete the goal.
The requirement will have target value and a operator that will evaluate that against an observable playerâs attribute (e.g. statistic, entitlement). Goal belongs to a challenge.
Supported item type for ENTITLEMENT reward type: APP, BUNDLE, CODE, COINS, EXTENSION, INGAMEITEM, LOOTBOX, MEDIA, OPTIONBOX
*/
func (a *Client) AdminUpdateGoalsShort(params *AdminUpdateGoalsParams, authInfo runtime.ClientAuthInfoWriter) (*AdminUpdateGoalsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminUpdateGoalsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminUpdateGoals",
		Method:             "PUT",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminUpdateGoalsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminUpdateGoalsOK:
		return v, nil
	case *AdminUpdateGoalsBadRequest:
		return nil, v
	case *AdminUpdateGoalsNotFound:
		return nil, v
	case *AdminUpdateGoalsUnprocessableEntity:
		return nil, v
	case *AdminUpdateGoalsInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AdminDeleteGoalShort instead.

AdminDeleteGoal delete goal
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [DELETE]
*/
func (a *Client) AdminDeleteGoal(params *AdminDeleteGoalParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteGoalNoContent, *AdminDeleteGoalBadRequest, *AdminDeleteGoalNotFound, *AdminDeleteGoalInternalServerError, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteGoalParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	if params.XFlightId != nil {
		params.SetFlightId(*params.XFlightId)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteGoal",
		Method:             "DELETE",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteGoalReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, nil, nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteGoalNoContent:
		return v, nil, nil, nil, nil

	case *AdminDeleteGoalBadRequest:
		return nil, v, nil, nil, nil

	case *AdminDeleteGoalNotFound:
		return nil, nil, v, nil, nil

	case *AdminDeleteGoalInternalServerError:
		return nil, nil, nil, v, nil

	default:
		return nil, nil, nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AdminDeleteGoalShort delete goal
- Required permission: ADMIN:NAMESPACE:{namespace}:CHALLENGE [DELETE]
*/
func (a *Client) AdminDeleteGoalShort(params *AdminDeleteGoalParams, authInfo runtime.ClientAuthInfoWriter) (*AdminDeleteGoalNoContent, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAdminDeleteGoalParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "adminDeleteGoal",
		Method:             "DELETE",
		PathPattern:        "/challenge/v1/admin/namespaces/{namespace}/challenges/{challengeCode}/goals/{code}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AdminDeleteGoalReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AdminDeleteGoalNoContent:
		return v, nil
	case *AdminDeleteGoalBadRequest:
		return nil, v
	case *AdminDeleteGoalNotFound:
		return nil, v
	case *AdminDeleteGoalInternalServerError:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
