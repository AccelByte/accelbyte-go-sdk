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

// NewPublicWebLinkPlatformParams creates a new PublicWebLinkPlatformParams object
// with the default values initialized.
func NewPublicWebLinkPlatformParams() *PublicWebLinkPlatformParams {
	var ()
	return &PublicWebLinkPlatformParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicWebLinkPlatformParamsWithTimeout creates a new PublicWebLinkPlatformParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicWebLinkPlatformParamsWithTimeout(timeout time.Duration) *PublicWebLinkPlatformParams {
	var ()
	return &PublicWebLinkPlatformParams{

		timeout: timeout,
	}
}

// NewPublicWebLinkPlatformParamsWithContext creates a new PublicWebLinkPlatformParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicWebLinkPlatformParamsWithContext(ctx context.Context) *PublicWebLinkPlatformParams {
	var ()
	return &PublicWebLinkPlatformParams{

		Context: ctx,
	}
}

// NewPublicWebLinkPlatformParamsWithHTTPClient creates a new PublicWebLinkPlatformParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicWebLinkPlatformParamsWithHTTPClient(client *http.Client) *PublicWebLinkPlatformParams {
	var ()
	return &PublicWebLinkPlatformParams{
		HTTPClient: client,
	}
}

/*PublicWebLinkPlatformParams contains all the parameters to send to the API endpoint
for the public web link platform operation typically these are written to a http.Request
*/
type PublicWebLinkPlatformParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  Namespace, only accept alphabet and numeric

	*/
	Namespace string
	/*PlatformID
	  Platform Id to be linked

	*/
	PlatformID string
	/*ClientID
	  Client ID

	*/
	ClientID *string
	/*RedirectURI
	  Redirect URI

	*/
	RedirectURI *string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public web link platform params
func (o *PublicWebLinkPlatformParams) WithTimeout(timeout time.Duration) *PublicWebLinkPlatformParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public web link platform params
func (o *PublicWebLinkPlatformParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public web link platform params
func (o *PublicWebLinkPlatformParams) WithContext(ctx context.Context) *PublicWebLinkPlatformParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public web link platform params
func (o *PublicWebLinkPlatformParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public web link platform params
func (o *PublicWebLinkPlatformParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public web link platform params
func (o *PublicWebLinkPlatformParams) WithHTTPClient(client *http.Client) *PublicWebLinkPlatformParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public web link platform params
func (o *PublicWebLinkPlatformParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public web link platform params
func (o *PublicWebLinkPlatformParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithNamespace adds the namespace to the public web link platform params
func (o *PublicWebLinkPlatformParams) WithNamespace(namespace string) *PublicWebLinkPlatformParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public web link platform params
func (o *PublicWebLinkPlatformParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the public web link platform params
func (o *PublicWebLinkPlatformParams) WithPlatformID(platformID string) *PublicWebLinkPlatformParams {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the public web link platform params
func (o *PublicWebLinkPlatformParams) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WithClientID adds the clientID to the public web link platform params
func (o *PublicWebLinkPlatformParams) WithClientID(clientID *string) *PublicWebLinkPlatformParams {
	o.SetClientID(clientID)
	return o
}

// SetClientID adds the clientId to the public web link platform params
func (o *PublicWebLinkPlatformParams) SetClientID(clientID *string) {
	o.ClientID = clientID
}

// WithRedirectURI adds the redirectURI to the public web link platform params
func (o *PublicWebLinkPlatformParams) WithRedirectURI(redirectURI *string) *PublicWebLinkPlatformParams {
	o.SetRedirectURI(redirectURI)
	return o
}

// SetRedirectURI adds the redirectUri to the public web link platform params
func (o *PublicWebLinkPlatformParams) SetRedirectURI(redirectURI *string) {
	o.RedirectURI = redirectURI
}

// WriteToRequest writes these params to a swagger request
func (o *PublicWebLinkPlatformParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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

	if o.ClientID != nil {

		// query param clientId
		var qrClientID string
		if o.ClientID != nil {
			qrClientID = *o.ClientID
		}
		qClientID := qrClientID
		if qClientID != "" {
			if err := r.SetQueryParam("clientId", qClientID); err != nil {
				return err
			}
		}

	}

	if o.RedirectURI != nil {

		// query param redirectUri
		var qrRedirectURI string
		if o.RedirectURI != nil {
			qrRedirectURI = *o.RedirectURI
		}
		qRedirectURI := qrRedirectURI
		if qRedirectURI != "" {
			if err := r.SetQueryParam("redirectUri", qRedirectURI); err != nil {
				return err
			}
		}

	}

	// setting the default header value
	if err := r.SetHeaderParam("User-Agent", utils.UserAgentGen()); err != nil {
		return err
	}

	if err := r.SetHeaderParam("X-Amzn-Trace-Id", utils.AmazonTraceIDGen()); err != nil {
		return err
	}

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
