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
)

// NewAdminDeleteTiedChallengeParams creates a new AdminDeleteTiedChallengeParams object
// with the default values initialized.
func NewAdminDeleteTiedChallengeParams() *AdminDeleteTiedChallengeParams {
	var ()
	return &AdminDeleteTiedChallengeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteTiedChallengeParamsWithTimeout creates a new AdminDeleteTiedChallengeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteTiedChallengeParamsWithTimeout(timeout time.Duration) *AdminDeleteTiedChallengeParams {
	var ()
	return &AdminDeleteTiedChallengeParams{

		timeout: timeout,
	}
}

// NewAdminDeleteTiedChallengeParamsWithContext creates a new AdminDeleteTiedChallengeParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteTiedChallengeParamsWithContext(ctx context.Context) *AdminDeleteTiedChallengeParams {
	var ()
	return &AdminDeleteTiedChallengeParams{

		Context: ctx,
	}
}

// NewAdminDeleteTiedChallengeParamsWithHTTPClient creates a new AdminDeleteTiedChallengeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteTiedChallengeParamsWithHTTPClient(client *http.Client) *AdminDeleteTiedChallengeParams {
	var ()
	return &AdminDeleteTiedChallengeParams{
		HTTPClient: client,
	}
}

/*AdminDeleteTiedChallengeParams contains all the parameters to send to the API endpoint
for the admin delete tied challenge operation typically these are written to a http.Request
*/
type AdminDeleteTiedChallengeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ChallengeCode
	  the code of the challenge data to be deleted

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

// WithTimeout adds the timeout to the admin delete tied challenge params
func (o *AdminDeleteTiedChallengeParams) WithTimeout(timeout time.Duration) *AdminDeleteTiedChallengeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete tied challenge params
func (o *AdminDeleteTiedChallengeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete tied challenge params
func (o *AdminDeleteTiedChallengeParams) WithContext(ctx context.Context) *AdminDeleteTiedChallengeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete tied challenge params
func (o *AdminDeleteTiedChallengeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete tied challenge params
func (o *AdminDeleteTiedChallengeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete tied challenge params
func (o *AdminDeleteTiedChallengeParams) WithHTTPClient(client *http.Client) *AdminDeleteTiedChallengeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete tied challenge params
func (o *AdminDeleteTiedChallengeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete tied challenge params
func (o *AdminDeleteTiedChallengeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDeleteTiedChallengeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChallengeCode adds the challengeCode to the admin delete tied challenge params
func (o *AdminDeleteTiedChallengeParams) WithChallengeCode(challengeCode string) *AdminDeleteTiedChallengeParams {
	o.SetChallengeCode(challengeCode)
	return o
}

// SetChallengeCode adds the challengeCode to the admin delete tied challenge params
func (o *AdminDeleteTiedChallengeParams) SetChallengeCode(challengeCode string) {
	o.ChallengeCode = challengeCode
}

// WithNamespace adds the namespace to the admin delete tied challenge params
func (o *AdminDeleteTiedChallengeParams) WithNamespace(namespace string) *AdminDeleteTiedChallengeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete tied challenge params
func (o *AdminDeleteTiedChallengeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteTiedChallengeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
