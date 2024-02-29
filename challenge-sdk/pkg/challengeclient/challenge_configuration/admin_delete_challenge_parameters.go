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

// NewAdminDeleteChallengeParams creates a new AdminDeleteChallengeParams object
// with the default values initialized.
func NewAdminDeleteChallengeParams() *AdminDeleteChallengeParams {
	var ()
	return &AdminDeleteChallengeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDeleteChallengeParamsWithTimeout creates a new AdminDeleteChallengeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDeleteChallengeParamsWithTimeout(timeout time.Duration) *AdminDeleteChallengeParams {
	var ()
	return &AdminDeleteChallengeParams{

		timeout: timeout,
	}
}

// NewAdminDeleteChallengeParamsWithContext creates a new AdminDeleteChallengeParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDeleteChallengeParamsWithContext(ctx context.Context) *AdminDeleteChallengeParams {
	var ()
	return &AdminDeleteChallengeParams{

		Context: ctx,
	}
}

// NewAdminDeleteChallengeParamsWithHTTPClient creates a new AdminDeleteChallengeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDeleteChallengeParamsWithHTTPClient(client *http.Client) *AdminDeleteChallengeParams {
	var ()
	return &AdminDeleteChallengeParams{
		HTTPClient: client,
	}
}

/*AdminDeleteChallengeParams contains all the parameters to send to the API endpoint
for the admin delete challenge operation typically these are written to a http.Request
*/
type AdminDeleteChallengeParams struct {

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

// WithTimeout adds the timeout to the admin delete challenge params
func (o *AdminDeleteChallengeParams) WithTimeout(timeout time.Duration) *AdminDeleteChallengeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin delete challenge params
func (o *AdminDeleteChallengeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin delete challenge params
func (o *AdminDeleteChallengeParams) WithContext(ctx context.Context) *AdminDeleteChallengeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin delete challenge params
func (o *AdminDeleteChallengeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin delete challenge params
func (o *AdminDeleteChallengeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin delete challenge params
func (o *AdminDeleteChallengeParams) WithHTTPClient(client *http.Client) *AdminDeleteChallengeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin delete challenge params
func (o *AdminDeleteChallengeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin delete challenge params
func (o *AdminDeleteChallengeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *AdminDeleteChallengeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithChallengeCode adds the challengeCode to the admin delete challenge params
func (o *AdminDeleteChallengeParams) WithChallengeCode(challengeCode string) *AdminDeleteChallengeParams {
	o.SetChallengeCode(challengeCode)
	return o
}

// SetChallengeCode adds the challengeCode to the admin delete challenge params
func (o *AdminDeleteChallengeParams) SetChallengeCode(challengeCode string) {
	o.ChallengeCode = challengeCode
}

// WithNamespace adds the namespace to the admin delete challenge params
func (o *AdminDeleteChallengeParams) WithNamespace(namespace string) *AdminDeleteChallengeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin delete challenge params
func (o *AdminDeleteChallengeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDeleteChallengeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
