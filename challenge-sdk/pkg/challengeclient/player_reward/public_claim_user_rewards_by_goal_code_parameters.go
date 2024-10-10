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

// NewPublicClaimUserRewardsByGoalCodeParams creates a new PublicClaimUserRewardsByGoalCodeParams object
// with the default values initialized.
func NewPublicClaimUserRewardsByGoalCodeParams() *PublicClaimUserRewardsByGoalCodeParams {
	var ()
	return &PublicClaimUserRewardsByGoalCodeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicClaimUserRewardsByGoalCodeParamsWithTimeout creates a new PublicClaimUserRewardsByGoalCodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicClaimUserRewardsByGoalCodeParamsWithTimeout(timeout time.Duration) *PublicClaimUserRewardsByGoalCodeParams {
	var ()
	return &PublicClaimUserRewardsByGoalCodeParams{

		timeout: timeout,
	}
}

// NewPublicClaimUserRewardsByGoalCodeParamsWithContext creates a new PublicClaimUserRewardsByGoalCodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicClaimUserRewardsByGoalCodeParamsWithContext(ctx context.Context) *PublicClaimUserRewardsByGoalCodeParams {
	var ()
	return &PublicClaimUserRewardsByGoalCodeParams{

		Context: ctx,
	}
}

// NewPublicClaimUserRewardsByGoalCodeParamsWithHTTPClient creates a new PublicClaimUserRewardsByGoalCodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicClaimUserRewardsByGoalCodeParamsWithHTTPClient(client *http.Client) *PublicClaimUserRewardsByGoalCodeParams {
	var ()
	return &PublicClaimUserRewardsByGoalCodeParams{
		HTTPClient: client,
	}
}

/*PublicClaimUserRewardsByGoalCodeParams contains all the parameters to send to the API endpoint
for the public claim user rewards by goal code operation typically these are written to a http.Request
*/
type PublicClaimUserRewardsByGoalCodeParams struct {

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

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public claim user rewards by goal code params
func (o *PublicClaimUserRewardsByGoalCodeParams) WithTimeout(timeout time.Duration) *PublicClaimUserRewardsByGoalCodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public claim user rewards by goal code params
func (o *PublicClaimUserRewardsByGoalCodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public claim user rewards by goal code params
func (o *PublicClaimUserRewardsByGoalCodeParams) WithContext(ctx context.Context) *PublicClaimUserRewardsByGoalCodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public claim user rewards by goal code params
func (o *PublicClaimUserRewardsByGoalCodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public claim user rewards by goal code params
func (o *PublicClaimUserRewardsByGoalCodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public claim user rewards by goal code params
func (o *PublicClaimUserRewardsByGoalCodeParams) WithHTTPClient(client *http.Client) *PublicClaimUserRewardsByGoalCodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public claim user rewards by goal code params
func (o *PublicClaimUserRewardsByGoalCodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public claim user rewards by goal code params
func (o *PublicClaimUserRewardsByGoalCodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicClaimUserRewardsByGoalCodeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the public claim user rewards by goal code params
func (o *PublicClaimUserRewardsByGoalCodeParams) WithBody(body *challengeclientmodels.ModelClaimUserRewardsByGoalCodeRequest) *PublicClaimUserRewardsByGoalCodeParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the public claim user rewards by goal code params
func (o *PublicClaimUserRewardsByGoalCodeParams) SetBody(body *challengeclientmodels.ModelClaimUserRewardsByGoalCodeRequest) {
	o.Body = body
}

// WithChallengeCode adds the challengeCode to the public claim user rewards by goal code params
func (o *PublicClaimUserRewardsByGoalCodeParams) WithChallengeCode(challengeCode string) *PublicClaimUserRewardsByGoalCodeParams {
	o.SetChallengeCode(challengeCode)
	return o
}

// SetChallengeCode adds the challengeCode to the public claim user rewards by goal code params
func (o *PublicClaimUserRewardsByGoalCodeParams) SetChallengeCode(challengeCode string) {
	o.ChallengeCode = challengeCode
}

// WithNamespace adds the namespace to the public claim user rewards by goal code params
func (o *PublicClaimUserRewardsByGoalCodeParams) WithNamespace(namespace string) *PublicClaimUserRewardsByGoalCodeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public claim user rewards by goal code params
func (o *PublicClaimUserRewardsByGoalCodeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicClaimUserRewardsByGoalCodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
