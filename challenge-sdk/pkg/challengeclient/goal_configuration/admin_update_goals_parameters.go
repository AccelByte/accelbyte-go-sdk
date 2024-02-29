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

	"github.com/AccelByte/accelbyte-go-sdk/challenge-sdk/pkg/challengeclientmodels"
)

// NewAdminUpdateGoalsParams creates a new AdminUpdateGoalsParams object
// with the default values initialized.
func NewAdminUpdateGoalsParams() *AdminUpdateGoalsParams {
	var ()
	return &AdminUpdateGoalsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateGoalsParamsWithTimeout creates a new AdminUpdateGoalsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateGoalsParamsWithTimeout(timeout time.Duration) *AdminUpdateGoalsParams {
	var ()
	return &AdminUpdateGoalsParams{

		timeout: timeout,
	}
}

// NewAdminUpdateGoalsParamsWithContext creates a new AdminUpdateGoalsParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateGoalsParamsWithContext(ctx context.Context) *AdminUpdateGoalsParams {
	var ()
	return &AdminUpdateGoalsParams{

		Context: ctx,
	}
}

// NewAdminUpdateGoalsParamsWithHTTPClient creates a new AdminUpdateGoalsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateGoalsParamsWithHTTPClient(client *http.Client) *AdminUpdateGoalsParams {
	var ()
	return &AdminUpdateGoalsParams{
		HTTPClient: client,
	}
}

/*AdminUpdateGoalsParams contains all the parameters to send to the API endpoint
for the admin update goals operation typically these are written to a http.Request
*/
type AdminUpdateGoalsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *challengeclientmodels.ModelUpdateGoalRequest
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

// WithTimeout adds the timeout to the admin update goals params
func (o *AdminUpdateGoalsParams) WithTimeout(timeout time.Duration) *AdminUpdateGoalsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update goals params
func (o *AdminUpdateGoalsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update goals params
func (o *AdminUpdateGoalsParams) WithContext(ctx context.Context) *AdminUpdateGoalsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update goals params
func (o *AdminUpdateGoalsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update goals params
func (o *AdminUpdateGoalsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update goals params
func (o *AdminUpdateGoalsParams) WithHTTPClient(client *http.Client) *AdminUpdateGoalsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update goals params
func (o *AdminUpdateGoalsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update goals params
func (o *AdminUpdateGoalsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUpdateGoalsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin update goals params
func (o *AdminUpdateGoalsParams) WithBody(body *challengeclientmodels.ModelUpdateGoalRequest) *AdminUpdateGoalsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update goals params
func (o *AdminUpdateGoalsParams) SetBody(body *challengeclientmodels.ModelUpdateGoalRequest) {
	o.Body = body
}

// WithChallengeCode adds the challengeCode to the admin update goals params
func (o *AdminUpdateGoalsParams) WithChallengeCode(challengeCode string) *AdminUpdateGoalsParams {
	o.SetChallengeCode(challengeCode)
	return o
}

// SetChallengeCode adds the challengeCode to the admin update goals params
func (o *AdminUpdateGoalsParams) SetChallengeCode(challengeCode string) {
	o.ChallengeCode = challengeCode
}

// WithCode adds the code to the admin update goals params
func (o *AdminUpdateGoalsParams) WithCode(code string) *AdminUpdateGoalsParams {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the admin update goals params
func (o *AdminUpdateGoalsParams) SetCode(code string) {
	o.Code = code
}

// WithNamespace adds the namespace to the admin update goals params
func (o *AdminUpdateGoalsParams) WithNamespace(namespace string) *AdminUpdateGoalsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update goals params
func (o *AdminUpdateGoalsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateGoalsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
