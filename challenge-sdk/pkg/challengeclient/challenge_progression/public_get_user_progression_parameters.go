// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challenge_progression

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"
)

// NewPublicGetUserProgressionParams creates a new PublicGetUserProgressionParams object
// with the default values initialized.
func NewPublicGetUserProgressionParams() *PublicGetUserProgressionParams {
	var ()
	return &PublicGetUserProgressionParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicGetUserProgressionParamsWithTimeout creates a new PublicGetUserProgressionParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicGetUserProgressionParamsWithTimeout(timeout time.Duration) *PublicGetUserProgressionParams {
	var ()
	return &PublicGetUserProgressionParams{

		timeout: timeout,
	}
}

// NewPublicGetUserProgressionParamsWithContext creates a new PublicGetUserProgressionParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicGetUserProgressionParamsWithContext(ctx context.Context) *PublicGetUserProgressionParams {
	var ()
	return &PublicGetUserProgressionParams{

		Context: ctx,
	}
}

// NewPublicGetUserProgressionParamsWithHTTPClient creates a new PublicGetUserProgressionParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicGetUserProgressionParamsWithHTTPClient(client *http.Client) *PublicGetUserProgressionParams {
	var ()
	return &PublicGetUserProgressionParams{
		HTTPClient: client,
	}
}

/*PublicGetUserProgressionParams contains all the parameters to send to the API endpoint
for the public get user progression operation typically these are written to a http.Request
*/
type PublicGetUserProgressionParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ChallengeCode
	  challenge code

	*/
	ChallengeCode string
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*GoalCode
	  goal code

	*/
	GoalCode *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public get user progression params
func (o *PublicGetUserProgressionParams) WithTimeout(timeout time.Duration) *PublicGetUserProgressionParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public get user progression params
func (o *PublicGetUserProgressionParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public get user progression params
func (o *PublicGetUserProgressionParams) WithContext(ctx context.Context) *PublicGetUserProgressionParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public get user progression params
func (o *PublicGetUserProgressionParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public get user progression params
func (o *PublicGetUserProgressionParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public get user progression params
func (o *PublicGetUserProgressionParams) WithHTTPClient(client *http.Client) *PublicGetUserProgressionParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public get user progression params
func (o *PublicGetUserProgressionParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public get user progression params
func (o *PublicGetUserProgressionParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicGetUserProgressionParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChallengeCode adds the challengeCode to the public get user progression params
func (o *PublicGetUserProgressionParams) WithChallengeCode(challengeCode string) *PublicGetUserProgressionParams {
	o.SetChallengeCode(challengeCode)
	return o
}

// SetChallengeCode adds the challengeCode to the public get user progression params
func (o *PublicGetUserProgressionParams) SetChallengeCode(challengeCode string) {
	o.ChallengeCode = challengeCode
}

// WithNamespace adds the namespace to the public get user progression params
func (o *PublicGetUserProgressionParams) WithNamespace(namespace string) *PublicGetUserProgressionParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public get user progression params
func (o *PublicGetUserProgressionParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithGoalCode adds the goalCode to the public get user progression params
func (o *PublicGetUserProgressionParams) WithGoalCode(goalCode *string) *PublicGetUserProgressionParams {
	o.SetGoalCode(goalCode)
	return o
}

// SetGoalCode adds the goalCode to the public get user progression params
func (o *PublicGetUserProgressionParams) SetGoalCode(goalCode *string) {
	o.GoalCode = goalCode
}

// WriteToRequest writes these params to a swagger request
func (o *PublicGetUserProgressionParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param challengeCode
	if err := r.SetPathParam("challengeCode", o.ChallengeCode); err != nil {
		return err
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	if o.GoalCode != nil {

		// query param goalCode
		var qrGoalCode string
		if o.GoalCode != nil {
			qrGoalCode = *o.GoalCode
		}
		qGoalCode := qrGoalCode
		if qGoalCode != "" {
			if err := r.SetQueryParam("goalCode", qGoalCode); err != nil {
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
