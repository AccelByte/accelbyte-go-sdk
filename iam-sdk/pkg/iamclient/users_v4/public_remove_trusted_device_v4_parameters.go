// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package users_v4

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

// NewPublicRemoveTrustedDeviceV4Params creates a new PublicRemoveTrustedDeviceV4Params object
// with the default values initialized.
func NewPublicRemoveTrustedDeviceV4Params() *PublicRemoveTrustedDeviceV4Params {
	var ()
	return &PublicRemoveTrustedDeviceV4Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicRemoveTrustedDeviceV4ParamsWithTimeout creates a new PublicRemoveTrustedDeviceV4Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicRemoveTrustedDeviceV4ParamsWithTimeout(timeout time.Duration) *PublicRemoveTrustedDeviceV4Params {
	var ()
	return &PublicRemoveTrustedDeviceV4Params{

		timeout: timeout,
	}
}

// NewPublicRemoveTrustedDeviceV4ParamsWithContext creates a new PublicRemoveTrustedDeviceV4Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicRemoveTrustedDeviceV4ParamsWithContext(ctx context.Context) *PublicRemoveTrustedDeviceV4Params {
	var ()
	return &PublicRemoveTrustedDeviceV4Params{

		Context: ctx,
	}
}

// NewPublicRemoveTrustedDeviceV4ParamsWithHTTPClient creates a new PublicRemoveTrustedDeviceV4Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicRemoveTrustedDeviceV4ParamsWithHTTPClient(client *http.Client) *PublicRemoveTrustedDeviceV4Params {
	var ()
	return &PublicRemoveTrustedDeviceV4Params{
		HTTPClient: client,
	}
}

/*PublicRemoveTrustedDeviceV4Params contains all the parameters to send to the API endpoint
for the public remove trusted device v4 operation typically these are written to a http.Request
*/
type PublicRemoveTrustedDeviceV4Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Cookie*/
	Cookie *string
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public remove trusted device v4 params
func (o *PublicRemoveTrustedDeviceV4Params) WithTimeout(timeout time.Duration) *PublicRemoveTrustedDeviceV4Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public remove trusted device v4 params
func (o *PublicRemoveTrustedDeviceV4Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public remove trusted device v4 params
func (o *PublicRemoveTrustedDeviceV4Params) WithContext(ctx context.Context) *PublicRemoveTrustedDeviceV4Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public remove trusted device v4 params
func (o *PublicRemoveTrustedDeviceV4Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public remove trusted device v4 params
func (o *PublicRemoveTrustedDeviceV4Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public remove trusted device v4 params
func (o *PublicRemoveTrustedDeviceV4Params) WithHTTPClient(client *http.Client) *PublicRemoveTrustedDeviceV4Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public remove trusted device v4 params
func (o *PublicRemoveTrustedDeviceV4Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public remove trusted device v4 params
func (o *PublicRemoveTrustedDeviceV4Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicRemoveTrustedDeviceV4Params) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithCookie adds the cookie to the public remove trusted device v4 params
func (o *PublicRemoveTrustedDeviceV4Params) WithCookie(cookie *string) *PublicRemoveTrustedDeviceV4Params {
	o.SetCookie(cookie)
	return o
}

// SetCookie adds the cookie to the public remove trusted device v4 params
func (o *PublicRemoveTrustedDeviceV4Params) SetCookie(cookie *string) {
	o.Cookie = cookie
}

// WithNamespace adds the namespace to the public remove trusted device v4 params
func (o *PublicRemoveTrustedDeviceV4Params) WithNamespace(namespace string) *PublicRemoveTrustedDeviceV4Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public remove trusted device v4 params
func (o *PublicRemoveTrustedDeviceV4Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicRemoveTrustedDeviceV4Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Cookie != nil {

		// header param Cookie
		if err := r.SetHeaderParam("Cookie", *o.Cookie); err != nil {
			return err
		}

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
