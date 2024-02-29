// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package goal_configuration

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

// NewAdminDeleteGoalParams creates a new AdminDeleteGoalParams object
// with the default values initialized.
func NewAdminDeleteGoalParams() *AdminDeleteGoalParams {
	var ()
	return &AdminDeleteGoalParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteGoalParamsWithTimeout creates a new AdminDeleteGoalParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteGoalParamsWithTimeout(timeout time.Duration) *AdminDeleteGoalParams {
	var ()
	return &AdminDeleteGoalParams{

		timeout: timeout,
	}
}

// NewAdminDeleteGoalParamsWithContext creates a new AdminDeleteGoalParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteGoalParamsWithContext(ctx context.Context) *AdminDeleteGoalParams {
	var ()
	return &AdminDeleteGoalParams{

		Context: ctx,
	}
}

// NewAdminDeleteGoalParamsWithHTTPClient creates a new AdminDeleteGoalParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteGoalParamsWithHTTPClient(client *http.Client) *AdminDeleteGoalParams {
	var ()
	return &AdminDeleteGoalParams{
		HTTPClient: client,
	}
}

/*AdminDeleteGoalParams contains all the parameters to send to the API endpoint
for the admin delete goal operation typically these are written to a http.Request
*/
type AdminDeleteGoalParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ChallengeCode
	  challenge code

	*/
	ChallengeCode string
	/*Code
	  goal code

	*/
	Code string
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

// WithTimeout adds the timeout to the admin delete goal params
func (o *AdminDeleteGoalParams) WithTimeout(timeout time.Duration) *AdminDeleteGoalParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete goal params
func (o *AdminDeleteGoalParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete goal params
func (o *AdminDeleteGoalParams) WithContext(ctx context.Context) *AdminDeleteGoalParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete goal params
func (o *AdminDeleteGoalParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete goal params
func (o *AdminDeleteGoalParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete goal params
func (o *AdminDeleteGoalParams) WithHTTPClient(client *http.Client) *AdminDeleteGoalParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete goal params
func (o *AdminDeleteGoalParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete goal params
func (o *AdminDeleteGoalParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDeleteGoalParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChallengeCode adds the challengeCode to the admin delete goal params
func (o *AdminDeleteGoalParams) WithChallengeCode(challengeCode string) *AdminDeleteGoalParams {
	o.SetChallengeCode(challengeCode)
	return o
}

// SetChallengeCode adds the challengeCode to the admin delete goal params
func (o *AdminDeleteGoalParams) SetChallengeCode(challengeCode string) {
	o.ChallengeCode = challengeCode
}

// WithCode adds the code to the admin delete goal params
func (o *AdminDeleteGoalParams) WithCode(code string) *AdminDeleteGoalParams {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the admin delete goal params
func (o *AdminDeleteGoalParams) SetCode(code string) {
	o.Code = code
}

// WithNamespace adds the namespace to the admin delete goal params
func (o *AdminDeleteGoalParams) WithNamespace(namespace string) *AdminDeleteGoalParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete goal params
func (o *AdminDeleteGoalParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteGoalParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param challengeCode
	if err := r.SetPathParam("challengeCode", o.ChallengeCode); err != nil {
		return err
	}

	// path param code
	if err := r.SetPathParam("code", o.Code); err != nil {
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
