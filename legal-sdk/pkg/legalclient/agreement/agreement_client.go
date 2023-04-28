// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated ; DO NOT EDIT.

package agreement

import (
	"context"
	"fmt"
	"reflect"

	"github.com/go-openapi/runtime"
	"github.com/go-openapi/strfmt"
)

// New creates a new agreement API client.
func New(transport runtime.ClientTransport, formats strfmt.Registry) ClientService {
	return &Client{transport: transport, formats: formats}
}

/*
Client for agreement API
*/
type Client struct {
	transport runtime.ClientTransport
	formats   strfmt.Registry
}

// ClientService is the interface for Client methods
type ClientService interface {
	ChangePreferenceConsent(params *ChangePreferenceConsentParams, authInfo runtime.ClientAuthInfoWriter) (*ChangePreferenceConsentOK, *ChangePreferenceConsentNotFound, error)
	ChangePreferenceConsentShort(params *ChangePreferenceConsentParams, authInfo runtime.ClientAuthInfoWriter) (*ChangePreferenceConsentOK, error)
	RetrieveAcceptedAgreements(params *RetrieveAcceptedAgreementsParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAcceptedAgreementsOK, error)
	RetrieveAcceptedAgreementsShort(params *RetrieveAcceptedAgreementsParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAcceptedAgreementsOK, error)
	RetrieveAllUsersByPolicyVersion(params *RetrieveAllUsersByPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllUsersByPolicyVersionOK, *RetrieveAllUsersByPolicyVersionNotFound, error)
	RetrieveAllUsersByPolicyVersionShort(params *RetrieveAllUsersByPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllUsersByPolicyVersionOK, error)
	ChangePreferenceConsent1(params *ChangePreferenceConsent1Params, authInfo runtime.ClientAuthInfoWriter) (*ChangePreferenceConsent1OK, *ChangePreferenceConsent1BadRequest, error)
	ChangePreferenceConsent1Short(params *ChangePreferenceConsent1Params, authInfo runtime.ClientAuthInfoWriter) (*ChangePreferenceConsent1OK, error)
	AcceptVersionedPolicy(params *AcceptVersionedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*AcceptVersionedPolicyCreated, *AcceptVersionedPolicyBadRequest, error)
	AcceptVersionedPolicyShort(params *AcceptVersionedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*AcceptVersionedPolicyCreated, error)
	RetrieveAgreementsPublic(params *RetrieveAgreementsPublicParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAgreementsPublicOK, *RetrieveAgreementsPublicBadRequest, error)
	RetrieveAgreementsPublicShort(params *RetrieveAgreementsPublicParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAgreementsPublicOK, error)
	BulkAcceptVersionedPolicy(params *BulkAcceptVersionedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*BulkAcceptVersionedPolicyCreated, *BulkAcceptVersionedPolicyBadRequest, error)
	BulkAcceptVersionedPolicyShort(params *BulkAcceptVersionedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*BulkAcceptVersionedPolicyCreated, error)
	IndirectBulkAcceptVersionedPolicyV2(params *IndirectBulkAcceptVersionedPolicyV2Params, authInfo runtime.ClientAuthInfoWriter) (*IndirectBulkAcceptVersionedPolicyV2Created, error)
	IndirectBulkAcceptVersionedPolicyV2Short(params *IndirectBulkAcceptVersionedPolicyV2Params, authInfo runtime.ClientAuthInfoWriter) (*IndirectBulkAcceptVersionedPolicyV2Created, error)
	IndirectBulkAcceptVersionedPolicy1(params *IndirectBulkAcceptVersionedPolicy1Params, authInfo runtime.ClientAuthInfoWriter) (*IndirectBulkAcceptVersionedPolicy1Created, *IndirectBulkAcceptVersionedPolicy1NotFound, error)
	IndirectBulkAcceptVersionedPolicy1Short(params *IndirectBulkAcceptVersionedPolicy1Params, authInfo runtime.ClientAuthInfoWriter) (*IndirectBulkAcceptVersionedPolicy1Created, error)

	SetTransport(transport runtime.ClientTransport)
}

/*
Deprecated: 2022-08-10 - Use ChangePreferenceConsentShort instead.

ChangePreferenceConsent change preference consent
This API will Update Preference Consent. Other detail info:

  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=4 (UPDATE)
*/
func (a *Client) ChangePreferenceConsent(params *ChangePreferenceConsentParams, authInfo runtime.ClientAuthInfoWriter) (*ChangePreferenceConsentOK, *ChangePreferenceConsentNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewChangePreferenceConsentParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "changePreferenceConsent",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/agreements/localized-policy-versions/preferences/namespaces/{namespace}/userId/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ChangePreferenceConsentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *ChangePreferenceConsentOK:
		return v, nil, nil

	case *ChangePreferenceConsentNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ChangePreferenceConsentShort change preference consent
This API will Update Preference Consent. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:{namespace}:LEGAL", action=4 (UPDATE)
*/
func (a *Client) ChangePreferenceConsentShort(params *ChangePreferenceConsentParams, authInfo runtime.ClientAuthInfoWriter) (*ChangePreferenceConsentOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewChangePreferenceConsentParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "changePreferenceConsent",
		Method:             "PATCH",
		PathPattern:        "/agreement/admin/agreements/localized-policy-versions/preferences/namespaces/{namespace}/userId/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ChangePreferenceConsentReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ChangePreferenceConsentOK:
		return v, nil
	case *ChangePreferenceConsentNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveAcceptedAgreementsShort instead.

RetrieveAcceptedAgreements retrieve accepted legal agreements
This API will return all accepted Legal Agreements for specified user. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=2 (READ)
*/
func (a *Client) RetrieveAcceptedAgreements(params *RetrieveAcceptedAgreementsParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAcceptedAgreementsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAcceptedAgreementsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveAcceptedAgreements",
		Method:             "GET",
		PathPattern:        "/agreement/admin/agreements/policies/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAcceptedAgreementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAcceptedAgreementsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveAcceptedAgreementsShort retrieve accepted legal agreements
This API will return all accepted Legal Agreements for specified user. Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=2 (READ)
*/
func (a *Client) RetrieveAcceptedAgreementsShort(params *RetrieveAcceptedAgreementsParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAcceptedAgreementsOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAcceptedAgreementsParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveAcceptedAgreements",
		Method:             "GET",
		PathPattern:        "/agreement/admin/agreements/policies/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAcceptedAgreementsReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAcceptedAgreementsOK:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveAllUsersByPolicyVersionShort instead.

RetrieveAllUsersByPolicyVersion retrieve all users accepting legal agreements
This API will return all users who has accepted a specific policy version.Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=2 (READ)
*/
func (a *Client) RetrieveAllUsersByPolicyVersion(params *RetrieveAllUsersByPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllUsersByPolicyVersionOK, *RetrieveAllUsersByPolicyVersionNotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllUsersByPolicyVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveAllUsersByPolicyVersion",
		Method:             "GET",
		PathPattern:        "/agreement/admin/agreements/policy-versions/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllUsersByPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllUsersByPolicyVersionOK:
		return v, nil, nil

	case *RetrieveAllUsersByPolicyVersionNotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveAllUsersByPolicyVersionShort retrieve all users accepting legal agreements
This API will return all users who has accepted a specific policy version.Other detail info:
  * Required permission : resource="ADMIN:NAMESPACE:*:LEGAL", action=2 (READ)
*/
func (a *Client) RetrieveAllUsersByPolicyVersionShort(params *RetrieveAllUsersByPolicyVersionParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAllUsersByPolicyVersionOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAllUsersByPolicyVersionParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveAllUsersByPolicyVersion",
		Method:             "GET",
		PathPattern:        "/agreement/admin/agreements/policy-versions/users",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAllUsersByPolicyVersionReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAllUsersByPolicyVersionOK:
		return v, nil
	case *RetrieveAllUsersByPolicyVersionNotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use ChangePreferenceConsent1Short instead.

ChangePreferenceConsent1 accept/revoke marketing preference consent
Change marketing preference consent.
Other detail info:

  * Required permission : login user
*/
func (a *Client) ChangePreferenceConsent1(params *ChangePreferenceConsent1Params, authInfo runtime.ClientAuthInfoWriter) (*ChangePreferenceConsent1OK, *ChangePreferenceConsent1BadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewChangePreferenceConsent1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "changePreferenceConsent_1",
		Method:             "PATCH",
		PathPattern:        "/agreement/public/agreements/localized-policy-versions/preferences",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ChangePreferenceConsent1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *ChangePreferenceConsent1OK:
		return v, nil, nil

	case *ChangePreferenceConsent1BadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
ChangePreferenceConsent1Short accept/revoke marketing preference consent
Change marketing preference consent.
Other detail info:

  * Required permission : login user
*/
func (a *Client) ChangePreferenceConsent1Short(params *ChangePreferenceConsent1Params, authInfo runtime.ClientAuthInfoWriter) (*ChangePreferenceConsent1OK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewChangePreferenceConsent1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "changePreferenceConsent_1",
		Method:             "PATCH",
		PathPattern:        "/agreement/public/agreements/localized-policy-versions/preferences",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &ChangePreferenceConsent1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *ChangePreferenceConsent1OK:
		return v, nil
	case *ChangePreferenceConsent1BadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use AcceptVersionedPolicyShort instead.

AcceptVersionedPolicy accept a policy version
Accepts a legal policy version. Supply with localized version policy id to accept an agreement.
Other detail info:

  * Required permission : login user
*/
func (a *Client) AcceptVersionedPolicy(params *AcceptVersionedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*AcceptVersionedPolicyCreated, *AcceptVersionedPolicyBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAcceptVersionedPolicyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "acceptVersionedPolicy",
		Method:             "POST",
		PathPattern:        "/agreement/public/agreements/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AcceptVersionedPolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *AcceptVersionedPolicyCreated:
		return v, nil, nil

	case *AcceptVersionedPolicyBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
AcceptVersionedPolicyShort accept a policy version
Accepts a legal policy version. Supply with localized version policy id to accept an agreement.
Other detail info:

  * Required permission : login user
*/
func (a *Client) AcceptVersionedPolicyShort(params *AcceptVersionedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*AcceptVersionedPolicyCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewAcceptVersionedPolicyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "acceptVersionedPolicy",
		Method:             "POST",
		PathPattern:        "/agreement/public/agreements/localized-policy-versions/{localizedPolicyVersionId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &AcceptVersionedPolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *AcceptVersionedPolicyCreated:
		return v, nil
	case *AcceptVersionedPolicyBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use RetrieveAgreementsPublicShort instead.

RetrieveAgreementsPublic retrieve the accepted legal agreements
Retrieve accepted Legal Agreements.
Other detail info:

  * Required permission : login user
*/
func (a *Client) RetrieveAgreementsPublic(params *RetrieveAgreementsPublicParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAgreementsPublicOK, *RetrieveAgreementsPublicBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAgreementsPublicParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveAgreementsPublic",
		Method:             "GET",
		PathPattern:        "/agreement/public/agreements/policies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAgreementsPublicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *RetrieveAgreementsPublicOK:
		return v, nil, nil

	case *RetrieveAgreementsPublicBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
RetrieveAgreementsPublicShort retrieve the accepted legal agreements
Retrieve accepted Legal Agreements.
Other detail info:

  * Required permission : login user
*/
func (a *Client) RetrieveAgreementsPublicShort(params *RetrieveAgreementsPublicParams, authInfo runtime.ClientAuthInfoWriter) (*RetrieveAgreementsPublicOK, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewRetrieveAgreementsPublicParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "retrieveAgreementsPublic",
		Method:             "GET",
		PathPattern:        "/agreement/public/agreements/policies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &RetrieveAgreementsPublicReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *RetrieveAgreementsPublicOK:
		return v, nil
	case *RetrieveAgreementsPublicBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use BulkAcceptVersionedPolicyShort instead.

BulkAcceptVersionedPolicy bulk accept policy versions
Accepts many legal policy versions all at once. Supply with localized version policy id to accept an agreement.
Other detail info:

  * Required permission : login user
*/
func (a *Client) BulkAcceptVersionedPolicy(params *BulkAcceptVersionedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*BulkAcceptVersionedPolicyCreated, *BulkAcceptVersionedPolicyBadRequest, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkAcceptVersionedPolicyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkAcceptVersionedPolicy",
		Method:             "POST",
		PathPattern:        "/agreement/public/agreements/policies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkAcceptVersionedPolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *BulkAcceptVersionedPolicyCreated:
		return v, nil, nil

	case *BulkAcceptVersionedPolicyBadRequest:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
BulkAcceptVersionedPolicyShort bulk accept policy versions
Accepts many legal policy versions all at once. Supply with localized version policy id to accept an agreement.
Other detail info:

  * Required permission : login user
*/
func (a *Client) BulkAcceptVersionedPolicyShort(params *BulkAcceptVersionedPolicyParams, authInfo runtime.ClientAuthInfoWriter) (*BulkAcceptVersionedPolicyCreated, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewBulkAcceptVersionedPolicyParams()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "bulkAcceptVersionedPolicy",
		Method:             "POST",
		PathPattern:        "/agreement/public/agreements/policies",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &BulkAcceptVersionedPolicyReader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *BulkAcceptVersionedPolicyCreated:
		return v, nil
	case *BulkAcceptVersionedPolicyBadRequest:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use IndirectBulkAcceptVersionedPolicyV2Short instead.

IndirectBulkAcceptVersionedPolicyV2 bulk accept policy versions (indirect)
 IMPORTANT: GOING TO DEPRECATE

Accepts many legal policy versions all at once. Supply with localized version policy id, version policy id, policy id, userId, namespace, country code and client id to accept an agreement. This endpoint used by APIGateway during new user registration.
Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:LEGAL", action=1 (CREATE)
*/
func (a *Client) IndirectBulkAcceptVersionedPolicyV2(params *IndirectBulkAcceptVersionedPolicyV2Params, authInfo runtime.ClientAuthInfoWriter) (*IndirectBulkAcceptVersionedPolicyV2Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewIndirectBulkAcceptVersionedPolicyV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "indirectBulkAcceptVersionedPolicyV2",
		Method:             "POST",
		PathPattern:        "/agreement/public/agreements/policies/namespaces/{namespace}/countries/{countryCode}/clients/{clientId}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &IndirectBulkAcceptVersionedPolicyV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *IndirectBulkAcceptVersionedPolicyV2Created:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
IndirectBulkAcceptVersionedPolicyV2Short bulk accept policy versions (indirect)
 IMPORTANT: GOING TO DEPRECATE

Accepts many legal policy versions all at once. Supply with localized version policy id, version policy id, policy id, userId, namespace, country code and client id to accept an agreement. This endpoint used by APIGateway during new user registration.
Other detail info:

  * Required permission : resource="NAMESPACE:{namespace}:LEGAL", action=1 (CREATE)
*/
func (a *Client) IndirectBulkAcceptVersionedPolicyV2Short(params *IndirectBulkAcceptVersionedPolicyV2Params, authInfo runtime.ClientAuthInfoWriter) (*IndirectBulkAcceptVersionedPolicyV2Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewIndirectBulkAcceptVersionedPolicyV2Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "indirectBulkAcceptVersionedPolicyV2",
		Method:             "POST",
		PathPattern:        "/agreement/public/agreements/policies/namespaces/{namespace}/countries/{countryCode}/clients/{clientId}/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &IndirectBulkAcceptVersionedPolicyV2Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *IndirectBulkAcceptVersionedPolicyV2Created:
		return v, nil

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
Deprecated: 2022-08-10 - Use IndirectBulkAcceptVersionedPolicy1Short instead.

IndirectBulkAcceptVersionedPolicy1 bulk accept policy versions (indirect)
Accepts many legal policy versions all at once. Supply with localized version policy id and userId to accept an agreement. This endpoint used by Authentication Service during new user registration.

Available Extra Information to return:


  * userIds : List of userId mapping ( IMPORTANT: GOING TO DEPRECATE )

Other detail info:
  * Required permission : login user
*/
func (a *Client) IndirectBulkAcceptVersionedPolicy1(params *IndirectBulkAcceptVersionedPolicy1Params, authInfo runtime.ClientAuthInfoWriter) (*IndirectBulkAcceptVersionedPolicy1Created, *IndirectBulkAcceptVersionedPolicy1NotFound, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewIndirectBulkAcceptVersionedPolicy1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "indirectBulkAcceptVersionedPolicy_1",
		Method:             "POST",
		PathPattern:        "/agreement/public/agreements/policies/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &IndirectBulkAcceptVersionedPolicy1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, nil, err
	}

	switch v := result.(type) {

	case *IndirectBulkAcceptVersionedPolicy1Created:
		return v, nil, nil

	case *IndirectBulkAcceptVersionedPolicy1NotFound:
		return nil, v, nil

	default:
		return nil, nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

/*
IndirectBulkAcceptVersionedPolicy1Short bulk accept policy versions (indirect)
Accepts many legal policy versions all at once. Supply with localized version policy id and userId to accept an agreement. This endpoint used by Authentication Service during new user registration.

Available Extra Information to return:


  * userIds : List of userId mapping ( IMPORTANT: GOING TO DEPRECATE )

Other detail info:
  * Required permission : login user
*/
func (a *Client) IndirectBulkAcceptVersionedPolicy1Short(params *IndirectBulkAcceptVersionedPolicy1Params, authInfo runtime.ClientAuthInfoWriter) (*IndirectBulkAcceptVersionedPolicy1Created, error) {
	// TODO: Validate the params before sending
	if params == nil {
		params = NewIndirectBulkAcceptVersionedPolicy1Params()
	}

	if params.Context == nil {
		params.Context = context.Background()
	}

	if params.RetryPolicy != nil {
		params.SetHTTPClientTransport(params.RetryPolicy)
	}

	result, err := a.transport.Submit(&runtime.ClientOperation{
		ID:                 "indirectBulkAcceptVersionedPolicy_1",
		Method:             "POST",
		PathPattern:        "/agreement/public/agreements/policies/users/{userId}",
		ProducesMediaTypes: []string{"application/json"},
		ConsumesMediaTypes: []string{"application/json"},
		Schemes:            []string{"https"},
		Params:             params,
		Reader:             &IndirectBulkAcceptVersionedPolicy1Reader{formats: a.formats},
		AuthInfo:           authInfo,
		Context:            params.Context,
		Client:             params.HTTPClient,
	})
	if err != nil {
		return nil, err
	}

	switch v := result.(type) {

	case *IndirectBulkAcceptVersionedPolicy1Created:
		return v, nil
	case *IndirectBulkAcceptVersionedPolicy1NotFound:
		return nil, v

	default:
		return nil, fmt.Errorf("Unexpected Type %v", reflect.TypeOf(v))
	}
}

// SetTransport changes the transport on the client
func (a *Client) SetTransport(transport runtime.ClientTransport) {
	a.transport = transport
}
