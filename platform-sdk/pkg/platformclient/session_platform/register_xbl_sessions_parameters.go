// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package session_platform

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewRegisterXblSessionsParams creates a new RegisterXblSessionsParams object
// with the default values initialized.
func NewRegisterXblSessionsParams() *RegisterXblSessionsParams {
	var ()
	return &RegisterXblSessionsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewRegisterXblSessionsParamsWithTimeout creates a new RegisterXblSessionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewRegisterXblSessionsParamsWithTimeout(timeout time.Duration) *RegisterXblSessionsParams {
	var ()
	return &RegisterXblSessionsParams{

		timeout: timeout,
	}
}

// NewRegisterXblSessionsParamsWithContext creates a new RegisterXblSessionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewRegisterXblSessionsParamsWithContext(ctx context.Context) *RegisterXblSessionsParams {
	var ()
	return &RegisterXblSessionsParams{

		Context: ctx,
	}
}

// NewRegisterXblSessionsParamsWithHTTPClient creates a new RegisterXblSessionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewRegisterXblSessionsParamsWithHTTPClient(client *http.Client) *RegisterXblSessionsParams {
	var ()
	return &RegisterXblSessionsParams{
		HTTPClient: client,
	}
}

/*RegisterXblSessionsParams contains all the parameters to send to the API endpoint
for the register xbl sessions operation typically these are written to a http.Request
*/
type RegisterXblSessionsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.XblUserSessionRequest
	/*Namespace*/
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

// WithTimeout adds the timeout to the register xbl sessions params
func (o *RegisterXblSessionsParams) WithTimeout(timeout time.Duration) *RegisterXblSessionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the register xbl sessions params
func (o *RegisterXblSessionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the register xbl sessions params
func (o *RegisterXblSessionsParams) WithContext(ctx context.Context) *RegisterXblSessionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the register xbl sessions params
func (o *RegisterXblSessionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the register xbl sessions params
func (o *RegisterXblSessionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the register xbl sessions params
func (o *RegisterXblSessionsParams) WithHTTPClient(client *http.Client) *RegisterXblSessionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the register xbl sessions params
func (o *RegisterXblSessionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the register xbl sessions params
func (o *RegisterXblSessionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *RegisterXblSessionsParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithBody adds the body to the register xbl sessions params
func (o *RegisterXblSessionsParams) WithBody(body *platformclientmodels.XblUserSessionRequest) *RegisterXblSessionsParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the register xbl sessions params
func (o *RegisterXblSessionsParams) SetBody(body *platformclientmodels.XblUserSessionRequest) {
	o.Body = body
}

// WithNamespace adds the namespace to the register xbl sessions params
func (o *RegisterXblSessionsParams) WithNamespace(namespace string) *RegisterXblSessionsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the register xbl sessions params
func (o *RegisterXblSessionsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithUserID adds the userID to the register xbl sessions params
func (o *RegisterXblSessionsParams) WithUserID(userID string) *RegisterXblSessionsParams {
	o.SetUserID(userID)
	return o
}

// SetUserID adds the userId to the register xbl sessions params
func (o *RegisterXblSessionsParams) SetUserID(userID string) {
	o.UserID = userID
}

// WriteToRequest writes these params to a swagger request
func (o *RegisterXblSessionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
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
