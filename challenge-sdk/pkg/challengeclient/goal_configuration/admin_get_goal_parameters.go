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

// NewAdminGetGoalParams creates a new AdminGetGoalParams object
// with the default values initialized.
func NewAdminGetGoalParams() *AdminGetGoalParams {
	var ()
	return &AdminGetGoalParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetGoalParamsWithTimeout creates a new AdminGetGoalParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetGoalParamsWithTimeout(timeout time.Duration) *AdminGetGoalParams {
	var ()
	return &AdminGetGoalParams{

		timeout: timeout,
	}
}

// NewAdminGetGoalParamsWithContext creates a new AdminGetGoalParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetGoalParamsWithContext(ctx context.Context) *AdminGetGoalParams {
	var ()
	return &AdminGetGoalParams{

		Context: ctx,
	}
}

// NewAdminGetGoalParamsWithHTTPClient creates a new AdminGetGoalParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetGoalParamsWithHTTPClient(client *http.Client) *AdminGetGoalParams {
	var ()
	return &AdminGetGoalParams{
		HTTPClient: client,
	}
}

/*AdminGetGoalParams contains all the parameters to send to the API endpoint
for the admin get goal operation typically these are written to a http.Request
*/
type AdminGetGoalParams struct {

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

// WithTimeout adds the timeout to the admin get goal params
func (o *AdminGetGoalParams) WithTimeout(timeout time.Duration) *AdminGetGoalParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get goal params
func (o *AdminGetGoalParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get goal params
func (o *AdminGetGoalParams) WithContext(ctx context.Context) *AdminGetGoalParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get goal params
func (o *AdminGetGoalParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get goal params
func (o *AdminGetGoalParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get goal params
func (o *AdminGetGoalParams) WithHTTPClient(client *http.Client) *AdminGetGoalParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get goal params
func (o *AdminGetGoalParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get goal params
func (o *AdminGetGoalParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminGetGoalParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChallengeCode adds the challengeCode to the admin get goal params
func (o *AdminGetGoalParams) WithChallengeCode(challengeCode string) *AdminGetGoalParams {
	o.SetChallengeCode(challengeCode)
	return o
}

// SetChallengeCode adds the challengeCode to the admin get goal params
func (o *AdminGetGoalParams) SetChallengeCode(challengeCode string) {
	o.ChallengeCode = challengeCode
}

// WithCode adds the code to the admin get goal params
func (o *AdminGetGoalParams) WithCode(code string) *AdminGetGoalParams {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the admin get goal params
func (o *AdminGetGoalParams) SetCode(code string) {
	o.Code = code
}

// WithNamespace adds the namespace to the admin get goal params
func (o *AdminGetGoalParams) WithNamespace(namespace string) *AdminGetGoalParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get goal params
func (o *AdminGetGoalParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetGoalParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
