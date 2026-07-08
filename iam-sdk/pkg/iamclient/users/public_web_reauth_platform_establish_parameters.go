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

// NewPublicWebReauthPlatformEstablishParams creates a new PublicWebReauthPlatformEstablishParams object
// with the default values initialized.
func NewPublicWebReauthPlatformEstablishParams() *PublicWebReauthPlatformEstablishParams {
	var ()
	return &PublicWebReauthPlatformEstablishParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicWebReauthPlatformEstablishParamsWithTimeout creates a new PublicWebReauthPlatformEstablishParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicWebReauthPlatformEstablishParamsWithTimeout(timeout time.Duration) *PublicWebReauthPlatformEstablishParams {
	var ()
	return &PublicWebReauthPlatformEstablishParams{

		timeout: timeout,
	}
}

// NewPublicWebReauthPlatformEstablishParamsWithContext creates a new PublicWebReauthPlatformEstablishParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicWebReauthPlatformEstablishParamsWithContext(ctx context.Context) *PublicWebReauthPlatformEstablishParams {
	var ()
	return &PublicWebReauthPlatformEstablishParams{

		Context: ctx,
	}
}

// NewPublicWebReauthPlatformEstablishParamsWithHTTPClient creates a new PublicWebReauthPlatformEstablishParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicWebReauthPlatformEstablishParamsWithHTTPClient(client *http.Client) *PublicWebReauthPlatformEstablishParams {
	var ()
	return &PublicWebReauthPlatformEstablishParams{
		HTTPClient: client,
	}
}

/*PublicWebReauthPlatformEstablishParams contains all the parameters to send to the API endpoint
for the public web reauth platform establish operation typically these are written to a http.Request
*/
type PublicWebReauthPlatformEstablishParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Accepts alphanumeric, with hyphens allowed between segments

	*/
	Namespace string
	/*PlatformID
	  Platform ID

	*/
	PlatformID string
	/*Code
	  Authorization code from third party

	*/
	Code *string
	/*State
	  State from third party redirect

	*/
	State string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public web reauth platform establish params
func (o *PublicWebReauthPlatformEstablishParams) WithTimeout(timeout time.Duration) *PublicWebReauthPlatformEstablishParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public web reauth platform establish params
func (o *PublicWebReauthPlatformEstablishParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public web reauth platform establish params
func (o *PublicWebReauthPlatformEstablishParams) WithContext(ctx context.Context) *PublicWebReauthPlatformEstablishParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public web reauth platform establish params
func (o *PublicWebReauthPlatformEstablishParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public web reauth platform establish params
func (o *PublicWebReauthPlatformEstablishParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public web reauth platform establish params
func (o *PublicWebReauthPlatformEstablishParams) WithHTTPClient(client *http.Client) *PublicWebReauthPlatformEstablishParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public web reauth platform establish params
func (o *PublicWebReauthPlatformEstablishParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public web reauth platform establish params
func (o *PublicWebReauthPlatformEstablishParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicWebReauthPlatformEstablishParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public web reauth platform establish params
func (o *PublicWebReauthPlatformEstablishParams) WithNamespace(namespace string) *PublicWebReauthPlatformEstablishParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public web reauth platform establish params
func (o *PublicWebReauthPlatformEstablishParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the public web reauth platform establish params
func (o *PublicWebReauthPlatformEstablishParams) WithPlatformID(platformID string) *PublicWebReauthPlatformEstablishParams {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the public web reauth platform establish params
func (o *PublicWebReauthPlatformEstablishParams) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithCode adds the code to the public web reauth platform establish params
func (o *PublicWebReauthPlatformEstablishParams) WithCode(code *string) *PublicWebReauthPlatformEstablishParams {
	o.SetCode(code)
	return o
}

// SetCode adds the code to the public web reauth platform establish params
func (o *PublicWebReauthPlatformEstablishParams) SetCode(code *string) {
	o.Code = code
}

// WithState adds the state to the public web reauth platform establish params
func (o *PublicWebReauthPlatformEstablishParams) WithState(state string) *PublicWebReauthPlatformEstablishParams {
	o.SetState(state)
	return o
}

// SetState adds the state to the public web reauth platform establish params
func (o *PublicWebReauthPlatformEstablishParams) SetState(state string) {
	o.State = state
}

// WriteToRequest writes these params to a swagger request
func (o *PublicWebReauthPlatformEstablishParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param platformId
	if err := r.SetPathParam("platformId", o.PlatformID); err != nil {
		return err
	}

	if o.Code != nil {

		// query param code
		var qrCode string
		if o.Code != nil {
			qrCode = *o.Code
		}
		qCode := qrCode
		if qCode != "" {
			if err := r.SetQueryParam("code", qCode); err != nil {
				return err
			}
		}

	}

	// query param state
	qrState := o.State
	qState := qrState
	if qState != "" {
		if err := r.SetQueryParam("state", qState); err != nil {
			return err
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
