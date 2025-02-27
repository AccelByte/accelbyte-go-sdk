// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package player_reward

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclientmodels"
)

// NewAdminClaimUserRewardsByGoalCodeParams creates a new AdminClaimUserRewardsByGoalCodeParams object
// with the default values initialized.
func NewAdminClaimUserRewardsByGoalCodeParams() *AdminClaimUserRewardsByGoalCodeParams {
	var ()
	return &AdminClaimUserRewardsByGoalCodeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminClaimUserRewardsByGoalCodeParamsWithTimeout creates a new AdminClaimUserRewardsByGoalCodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminClaimUserRewardsByGoalCodeParamsWithTimeout(timeout time.Duration) *AdminClaimUserRewardsByGoalCodeParams {
	var ()
	return &AdminClaimUserRewardsByGoalCodeParams{

		timeout: timeout,
	}
}

// NewAdminClaimUserRewardsByGoalCodeParamsWithContext creates a new AdminClaimUserRewardsByGoalCodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminClaimUserRewardsByGoalCodeParamsWithContext(ctx context.Context) *AdminClaimUserRewardsByGoalCodeParams {
	var ()
	return &AdminClaimUserRewardsByGoalCodeParams{

		Context: ctx,
	}
}

// NewAdminClaimUserRewardsByGoalCodeParamsWithHTTPClient creates a new AdminClaimUserRewardsByGoalCodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminClaimUserRewardsByGoalCodeParamsWithHTTPClient(client *http.Client) *AdminClaimUserRewardsByGoalCodeParams {
	var ()
	return &AdminClaimUserRewardsByGoalCodeParams{
		HTTPClient: client,
	}
}

/*AdminClaimUserRewardsByGoalCodeParams contains all the parameters to send to the API endpoint
for the admin claim user rewards by goal code operation typically these are written to a http.Request
*/
type AdminClaimUserRewardsByGoalCodeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *challengeclientmodels.ModelClaimUserRewardsByGoalCodeRequest
	/*ChallengeCode*/
	ChallengeCode string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*UserID*/
	UserID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the admin claim user rewards by goal code params
func (o *AdminClaimUserRewardsByGoalCodeParams) WithTimeout(timeout time.Duration) *AdminClaimUserRewardsByGoalCodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin claim user rewards by goal code params
func (o *AdminClaimUserRewardsByGoalCodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin claim user rewards by goal code params
func (o *AdminClaimUserRewardsByGoalCodeParams) WithContext(ctx context.Context) *AdminClaimUserRewardsByGoalCodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin claim user rewards by goal code params
func (o *AdminClaimUserRewardsByGoalCodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin claim user rewards by goal code params
func (o *AdminClaimUserRewardsByGoalCodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin claim user rewards by goal code params
func (o *AdminClaimUserRewardsByGoalCodeParams) WithHTTPClient(client *http.Client) *AdminClaimUserRewardsByGoalCodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin claim user rewards by goal code params
func (o *AdminClaimUserRewardsByGoalCodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin claim user rewards by goal code params
func (o *AdminClaimUserRewardsByGoalCodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminClaimUserRewardsByGoalCodeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin claim user rewards by goal code params
func (o *AdminClaimUserRewardsByGoalCodeParams) WithBody(body *challengeclientmodels.ModelClaimUserRewardsByGoalCodeRequest) *AdminClaimUserRewardsByGoalCodeParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin claim user rewards by goal code params
func (o *AdminClaimUserRewardsByGoalCodeParams) SetBody(body *challengeclientmodels.ModelClaimUserRewardsByGoalCodeRequest) {
	o.Body = body
}

// WithChallengeCode adds the challengeCode to the admin claim user rewards by goal code params
func (o *AdminClaimUserRewardsByGoalCodeParams) WithChallengeCode(challengeCode string) *AdminClaimUserRewardsByGoalCodeParams {
	o.SetChallengeCode(challengeCode)
	return o
}

// SetChallengeCode adds the challengeCode to the admin claim user rewards by goal code params
func (o *AdminClaimUserRewardsByGoalCodeParams) SetChallengeCode(challengeCode string) {
	o.ChallengeCode = challengeCode
}

// WithNamespace adds the namespace to the admin claim user rewards by goal code params
func (o *AdminClaimUserRewardsByGoalCodeParams) WithNamespace(namespace string) *AdminClaimUserRewardsByGoalCodeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin claim user rewards by goal code params
func (o *AdminClaimUserRewardsByGoalCodeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the admin claim user rewards by goal code params
func (o *AdminClaimUserRewardsByGoalCodeParams) WithUserID(userID string) *AdminClaimUserRewardsByGoalCodeParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the admin claim user rewards by goal code params
func (o *AdminClaimUserRewardsByGoalCodeParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *AdminClaimUserRewardsByGoalCodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param challengeCode
	if err := r.SetPathParam("challengeCode", o.ChallengeCode); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param userId
	if err := r.SetPathParam("userId", o.UserID); err != nil {
		return err
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
