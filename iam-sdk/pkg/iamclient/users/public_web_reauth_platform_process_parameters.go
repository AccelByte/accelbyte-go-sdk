// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users

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

// NewPublicWebReauthPlatformProcessParams creates a new PublicWebReauthPlatformProcessParams object
// with the default values initialized.
func NewPublicWebReauthPlatformProcessParams() *PublicWebReauthPlatformProcessParams {
	var ()
	return &PublicWebReauthPlatformProcessParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicWebReauthPlatformProcessParamsWithTimeout creates a new PublicWebReauthPlatformProcessParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicWebReauthPlatformProcessParamsWithTimeout(timeout time.Duration) *PublicWebReauthPlatformProcessParams {
	var ()
	return &PublicWebReauthPlatformProcessParams{

		timeout: timeout,
	}
}

// NewPublicWebReauthPlatformProcessParamsWithContext creates a new PublicWebReauthPlatformProcessParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicWebReauthPlatformProcessParamsWithContext(ctx context.Context) *PublicWebReauthPlatformProcessParams {
	var ()
	return &PublicWebReauthPlatformProcessParams{

		Context: ctx,
	}
}

// NewPublicWebReauthPlatformProcessParamsWithHTTPClient creates a new PublicWebReauthPlatformProcessParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicWebReauthPlatformProcessParamsWithHTTPClient(client *http.Client) *PublicWebReauthPlatformProcessParams {
	var ()
	return &PublicWebReauthPlatformProcessParams{
		HTTPClient: client,
	}
}

/*PublicWebReauthPlatformProcessParams contains all the parameters to send to the API endpoint
for the public web reauth platform process operation typically these are written to a http.Request
*/
type PublicWebReauthPlatformProcessParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Code
	  Authorization code from third party

	*/
	Code *string
	/*State
	  State, comes from the response of <code>GET /users/me/platforms/{platformId}/web/reauth</code> endpoint

	*/
	State string
	/*Namespace
	  Accepts alphanumeric, with hyphens allowed between segments

	*/
	Namespace string
	/*PlatformID
	  Platform ID

	*/
	PlatformID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public web reauth platform process params
func (o *PublicWebReauthPlatformProcessParams) WithTimeout(timeout time.Duration) *PublicWebReauthPlatformProcessParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public web reauth platform process params
func (o *PublicWebReauthPlatformProcessParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public web reauth platform process params
func (o *PublicWebReauthPlatformProcessParams) WithContext(ctx context.Context) *PublicWebReauthPlatformProcessParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public web reauth platform process params
func (o *PublicWebReauthPlatformProcessParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public web reauth platform process params
func (o *PublicWebReauthPlatformProcessParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public web reauth platform process params
func (o *PublicWebReauthPlatformProcessParams) WithHTTPClient(client *http.Client) *PublicWebReauthPlatformProcessParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public web reauth platform process params
func (o *PublicWebReauthPlatformProcessParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public web reauth platform process params
func (o *PublicWebReauthPlatformProcessParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicWebReauthPlatformProcessParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCode adds the code to the public web reauth platform process params
func (o *PublicWebReauthPlatformProcessParams) WithCode(code *string) *PublicWebReauthPlatformProcessParams {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the public web reauth platform process params
func (o *PublicWebReauthPlatformProcessParams) SetCode(code *string) {
	o.Code = code
}

// WithState adds the state to the public web reauth platform process params
func (o *PublicWebReauthPlatformProcessParams) WithState(state string) *PublicWebReauthPlatformProcessParams {
	o.SetState(state)
	return o
}

// SetState adds the state to the public web reauth platform process params
func (o *PublicWebReauthPlatformProcessParams) SetState(state string) {
	o.State = state
}

// WithNamespace adds the namespace to the public web reauth platform process params
func (o *PublicWebReauthPlatformProcessParams) WithNamespace(namespace string) *PublicWebReauthPlatformProcessParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public web reauth platform process params
func (o *PublicWebReauthPlatformProcessParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the public web reauth platform process params
func (o *PublicWebReauthPlatformProcessParams) WithPlatformID(platformID string) *PublicWebReauthPlatformProcessParams {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the public web reauth platform process params
func (o *PublicWebReauthPlatformProcessParams) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicWebReauthPlatformProcessParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Code != nil {

		// form param code
		var frCode string
		if o.Code != nil {
			frCode = *o.Code
		}
		fCode := frCode
		if fCode != "" {
			if err := r.SetFormParam("code", fCode); err != nil {
				return err
			}
		}

	}

	// form param state
	frState := o.State
	fState := frState
	if fState != "" {
		if err := r.SetFormParam("state", fState); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
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
