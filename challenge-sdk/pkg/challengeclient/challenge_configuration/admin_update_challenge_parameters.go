// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package challenge_configuration

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

// NewAdminUpdateChallengeParams creates a new AdminUpdateChallengeParams object
// with the default values initialized.
func NewAdminUpdateChallengeParams() *AdminUpdateChallengeParams {
	var ()
	return &AdminUpdateChallengeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateChallengeParamsWithTimeout creates a new AdminUpdateChallengeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateChallengeParamsWithTimeout(timeout time.Duration) *AdminUpdateChallengeParams {
	var ()
	return &AdminUpdateChallengeParams{

		timeout: timeout,
	}
}

// NewAdminUpdateChallengeParamsWithContext creates a new AdminUpdateChallengeParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateChallengeParamsWithContext(ctx context.Context) *AdminUpdateChallengeParams {
	var ()
	return &AdminUpdateChallengeParams{

		Context: ctx,
	}
}

// NewAdminUpdateChallengeParamsWithHTTPClient creates a new AdminUpdateChallengeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateChallengeParamsWithHTTPClient(client *http.Client) *AdminUpdateChallengeParams {
	var ()
	return &AdminUpdateChallengeParams{
		HTTPClient: client,
	}
}

/*AdminUpdateChallengeParams contains all the parameters to send to the API endpoint
for the admin update challenge operation typically these are written to a http.Request
*/
type AdminUpdateChallengeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *challengeclientmodels.ModelUpdateChallengeRequest
	/*ChallengeCode
	  the code of the challenge data to update

	*/
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

// WithTimeout adds the timeout to the admin update challenge params
func (o *AdminUpdateChallengeParams) WithTimeout(timeout time.Duration) *AdminUpdateChallengeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update challenge params
func (o *AdminUpdateChallengeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update challenge params
func (o *AdminUpdateChallengeParams) WithContext(ctx context.Context) *AdminUpdateChallengeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update challenge params
func (o *AdminUpdateChallengeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update challenge params
func (o *AdminUpdateChallengeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update challenge params
func (o *AdminUpdateChallengeParams) WithHTTPClient(client *http.Client) *AdminUpdateChallengeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update challenge params
func (o *AdminUpdateChallengeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update challenge params
func (o *AdminUpdateChallengeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminUpdateChallengeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the admin update challenge params
func (o *AdminUpdateChallengeParams) WithBody(body *challengeclientmodels.ModelUpdateChallengeRequest) *AdminUpdateChallengeParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update challenge params
func (o *AdminUpdateChallengeParams) SetBody(body *challengeclientmodels.ModelUpdateChallengeRequest) {
	o.Body = body
}

// WithChallengeCode adds the challengeCode to the admin update challenge params
func (o *AdminUpdateChallengeParams) WithChallengeCode(challengeCode string) *AdminUpdateChallengeParams {
	o.SetChallengeCode(challengeCode)
	return o
}

// SetChallengeCode adds the challengeCode to the admin update challenge params
func (o *AdminUpdateChallengeParams) SetChallengeCode(challengeCode string) {
	o.ChallengeCode = challengeCode
}

// WithNamespace adds the namespace to the admin update challenge params
func (o *AdminUpdateChallengeParams) WithNamespace(namespace string) *AdminUpdateChallengeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update challenge params
func (o *AdminUpdateChallengeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateChallengeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
