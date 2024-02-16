// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package terminated_servers

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
	"github.com/go-openapi/swag"
)

// NewListTerminatedServersWithNamespaceParams creates a new ListTerminatedServersWithNamespaceParams object
// with the default values initialized.
func NewListTerminatedServersWithNamespaceParams() *ListTerminatedServersWithNamespaceParams {
	var (
		limitDefault = int64(20)
	)
	return &ListTerminatedServersWithNamespaceParams{
		Limit: &limitDefault,

		timeout: cr.DefaultTimeout,
	}
}

// NewListTerminatedServersWithNamespaceParamsWithTimeout creates a new ListTerminatedServersWithNamespaceParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListTerminatedServersWithNamespaceParamsWithTimeout(timeout time.Duration) *ListTerminatedServersWithNamespaceParams {
	var (
		limitDefault = int64(20)
	)
	return &ListTerminatedServersWithNamespaceParams{
		Limit: &limitDefault,

		timeout: timeout,
	}
}

// NewListTerminatedServersWithNamespaceParamsWithContext creates a new ListTerminatedServersWithNamespaceParams object
// with the default values initialized, and the ability to set a context for a request
func NewListTerminatedServersWithNamespaceParamsWithContext(ctx context.Context) *ListTerminatedServersWithNamespaceParams {
	var (
		limitDefault = int64(20)
	)
	return &ListTerminatedServersWithNamespaceParams{
		Limit: &limitDefault,

		Context: ctx,
	}
}

// NewListTerminatedServersWithNamespaceParamsWithHTTPClient creates a new ListTerminatedServersWithNamespaceParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListTerminatedServersWithNamespaceParamsWithHTTPClient(client *http.Client) *ListTerminatedServersWithNamespaceParams {
	var (
		limitDefault = int64(20)
	)
	return &ListTerminatedServersWithNamespaceParams{
		Limit:      &limitDefault,
		HTTPClient: client,
	}
}

/*ListTerminatedServersWithNamespaceParams contains all the parameters to send to the API endpoint
for the list terminated servers with namespace operation typically these are written to a http.Request
*/
type ListTerminatedServersWithNamespaceParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*Deployment
	  deployment of the game

	*/
	Deployment *string
	/*GameMode
	  game mode of the game

	*/
	GameMode *string
	/*Limit
	  limit

	*/
	Limit *int64
	/*Next
	  next

	*/
	Next *string
	/*PartyID
	  ID of the party

	*/
	PartyID *string
	/*PodName
	  pod name of the server

	*/
	PodName *string
	/*Previous
	  previous

	*/
	Previous *string
	/*Provider
	  provider of the server

	*/
	Provider *string
	/*Region
	  region of the server

	*/
	Region *string
	/*SessionID
	  session id of the game

	*/
	SessionID *string
	/*UserID
	  ID of the user

	*/
	UserID *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) WithTimeout(timeout time.Duration) *ListTerminatedServersWithNamespaceParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) WithContext(ctx context.Context) *ListTerminatedServersWithNamespaceParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) WithHTTPClient(client *http.Client) *ListTerminatedServersWithNamespaceParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *ListTerminatedServersWithNamespaceParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) WithNamespace(namespace string) *ListTerminatedServersWithNamespaceParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithDeployment adds the deployment to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) WithDeployment(deployment *string) *ListTerminatedServersWithNamespaceParams {
	o.SetDeployment(deployment)
	return o
}

// SetDeployment adds the deployment to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) SetDeployment(deployment *string) {
	o.Deployment = deployment
}

// WithGameMode adds the gameMode to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) WithGameMode(gameMode *string) *ListTerminatedServersWithNamespaceParams {
	o.SetGameMode(gameMode)
	return o
}

// SetGameMode adds the gameMode to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) SetGameMode(gameMode *string) {
	o.GameMode = gameMode
}

// WithLimit adds the limit to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) WithLimit(limit *int64) *ListTerminatedServersWithNamespaceParams {
	o.SetLimit(limit)
	return o
}

// SetLimit adds the limit to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) SetLimit(limit *int64) {
	o.Limit = limit
}

// WithNext adds the nextVar to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) WithNext(nextVar *string) *ListTerminatedServersWithNamespaceParams {
	o.SetNext(nextVar)
	return o
}

// SetNext adds the next to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) SetNext(nextVar *string) {
	o.Next = nextVar
}

// WithPartyID adds the partyID to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) WithPartyID(partyID *string) *ListTerminatedServersWithNamespaceParams {
	o.SetPartyID(partyID)
	return o
}

// SetPartyID adds the partyId to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) SetPartyID(partyID *string) {
	o.PartyID = partyID
}

// WithPodName adds the podName to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) WithPodName(podName *string) *ListTerminatedServersWithNamespaceParams {
	o.SetPodName(podName)
	return o
}

// SetPodName adds the podName to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) SetPodName(podName *string) {
	o.PodName = podName
}

// WithPrevious adds the previous to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) WithPrevious(previous *string) *ListTerminatedServersWithNamespaceParams {
	o.SetPrevious(previous)
	return o
}

// SetPrevious adds the previous to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) SetPrevious(previous *string) {
	o.Previous = previous
}

// WithProvider adds the provider to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) WithProvider(provider *string) *ListTerminatedServersWithNamespaceParams {
	o.SetProvider(provider)
	return o
}

// SetProvider adds the provider to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) SetProvider(provider *string) {
	o.Provider = provider
}

// WithRegion adds the region to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) WithRegion(region *string) *ListTerminatedServersWithNamespaceParams {
	o.SetRegion(region)
	return o
}

// SetRegion adds the region to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) SetRegion(region *string) {
	o.Region = region
}

// WithSessionID adds the sessionID to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) WithSessionID(sessionID *string) *ListTerminatedServersWithNamespaceParams {
	o.SetSessionID(sessionID)
	return o
}

// SetSessionID adds the sessionId to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) SetSessionID(sessionID *string) {
	o.SessionID = sessionID
}

// WithUserID adds the userID to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) WithUserID(userID *string) *ListTerminatedServersWithNamespaceParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the list terminated servers with namespace params
func (o *ListTerminatedServersWithNamespaceParams) SetUserID(userID *string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *ListTerminatedServersWithNamespaceParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.Deployment != nil {

		// query param deployment
		var qrDeployment string
		if o.Deployment != nil {
			qrDeployment = *o.Deployment
		}
		qDeployment := qrDeployment
		if qDeployment != "" {
			if err := r.SetQueryParam("deployment", qDeployment); err != nil {
				return err
			}
		}

	}

	if o.GameMode != nil {

		// query param game_mode
		var qrGameMode string
		if o.GameMode != nil {
			qrGameMode = *o.GameMode
		}
		qGameMode := qrGameMode
		if qGameMode != "" {
			if err := r.SetQueryParam("game_mode", qGameMode); err != nil {
				return err
			}
		}

	}

	if o.Limit != nil {

		// query param limit
		var qrLimit int64
		if o.Limit != nil {
			qrLimit = *o.Limit
		}
		qLimit := swag.FormatInt64(qrLimit)
		if qLimit != "" {
			if err := r.SetQueryParam("limit", qLimit); err != nil {
				return err
			}
		}

	}

	if o.Next != nil {

		// query param next
		var qrNext string
		if o.Next != nil {
			qrNext = *o.Next
		}
		qNext := qrNext
		if qNext != "" {
			if err := r.SetQueryParam("next", qNext); err != nil {
				return err
			}
		}

	}

	if o.PartyID != nil {

		// query param party_id
		var qrPartyID string
		if o.PartyID != nil {
			qrPartyID = *o.PartyID
		}
		qPartyID := qrPartyID
		if qPartyID != "" {
			if err := r.SetQueryParam("party_id", qPartyID); err != nil {
				return err
			}
		}

	}

	if o.PodName != nil {

		// query param pod_name
		var qrPodName string
		if o.PodName != nil {
			qrPodName = *o.PodName
		}
		qPodName := qrPodName
		if qPodName != "" {
			if err := r.SetQueryParam("pod_name", qPodName); err != nil {
				return err
			}
		}

	}

	if o.Previous != nil {

		// query param previous
		var qrPrevious string
		if o.Previous != nil {
			qrPrevious = *o.Previous
		}
		qPrevious := qrPrevious
		if qPrevious != "" {
			if err := r.SetQueryParam("previous", qPrevious); err != nil {
				return err
			}
		}

	}

	if o.Provider != nil {

		// query param provider
		var qrProvider string
		if o.Provider != nil {
			qrProvider = *o.Provider
		}
		qProvider := qrProvider
		if qProvider != "" {
			if err := r.SetQueryParam("provider", qProvider); err != nil {
				return err
			}
		}

	}

	if o.Region != nil {

		// query param region
		var qrRegion string
		if o.Region != nil {
			qrRegion = *o.Region
		}
		qRegion := qrRegion
		if qRegion != "" {
			if err := r.SetQueryParam("region", qRegion); err != nil {
				return err
			}
		}

	}

	if o.SessionID != nil {

		// query param session_id
		var qrSessionID string
		if o.SessionID != nil {
			qrSessionID = *o.SessionID
		}
		qSessionID := qrSessionID
		if qSessionID != "" {
			if err := r.SetQueryParam("session_id", qSessionID); err != nil {
				return err
			}
		}

	}

	if o.UserID != nil {

		// query param user_id
		var qrUserID string
		if o.UserID != nil {
			qrUserID = *o.UserID
		}
		qUserID := qrUserID
		if qUserID != "" {
			if err := r.SetQueryParam("user_id", qUserID); err != nil {
				return err
			}
		}

	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if o.XFlightId == nil {
		if err := r.SetHeaderParam("X-Flight-Id", utils.GetDefaultFlightID().Value); err != nil {
			return err
		}
	} else {
		if err := r.SetHeaderParam("X-Flight-Id", *o.XFlightId); err != nil {
			return err
		}
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
