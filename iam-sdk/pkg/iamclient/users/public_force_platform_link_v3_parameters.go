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

// NewPublicForcePlatformLinkV3Params creates a new PublicForcePlatformLinkV3Params object
// with the default values initialized.
func NewPublicForcePlatformLinkV3Params() *PublicForcePlatformLinkV3Params {
	var ()
	return &PublicForcePlatformLinkV3Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicForcePlatformLinkV3ParamsWithTimeout creates a new PublicForcePlatformLinkV3Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicForcePlatformLinkV3ParamsWithTimeout(timeout time.Duration) *PublicForcePlatformLinkV3Params {
	var ()
	return &PublicForcePlatformLinkV3Params{

		timeout: timeout,
	}
}

// NewPublicForcePlatformLinkV3ParamsWithContext creates a new PublicForcePlatformLinkV3Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicForcePlatformLinkV3ParamsWithContext(ctx context.Context) *PublicForcePlatformLinkV3Params {
	var ()
	return &PublicForcePlatformLinkV3Params{

		Context: ctx,
	}
}

// NewPublicForcePlatformLinkV3ParamsWithHTTPClient creates a new PublicForcePlatformLinkV3Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicForcePlatformLinkV3ParamsWithHTTPClient(client *http.Client) *PublicForcePlatformLinkV3Params {
	var ()
	return &PublicForcePlatformLinkV3Params{
		HTTPClient: client,
	}
}

/*PublicForcePlatformLinkV3Params contains all the parameters to send to the API endpoint
for the public force platform link v3 operation typically these are written to a http.Request
*/
type PublicForcePlatformLinkV3Params struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Ticket
	  Token from platform auth

	*/
	Ticket string
	/*Namespace
	  Namespace, only accept alphabet and numeric

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
}

// WithTimeout adds the timeout to the public force platform link v3 params
func (o *PublicForcePlatformLinkV3Params) WithTimeout(timeout time.Duration) *PublicForcePlatformLinkV3Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public force platform link v3 params
func (o *PublicForcePlatformLinkV3Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public force platform link v3 params
func (o *PublicForcePlatformLinkV3Params) WithContext(ctx context.Context) *PublicForcePlatformLinkV3Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public force platform link v3 params
func (o *PublicForcePlatformLinkV3Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public force platform link v3 params
func (o *PublicForcePlatformLinkV3Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public force platform link v3 params
func (o *PublicForcePlatformLinkV3Params) WithHTTPClient(client *http.Client) *PublicForcePlatformLinkV3Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public force platform link v3 params
func (o *PublicForcePlatformLinkV3Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public force platform link v3 params
func (o *PublicForcePlatformLinkV3Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithTicket adds the ticket to the public force platform link v3 params
func (o *PublicForcePlatformLinkV3Params) WithTicket(ticket string) *PublicForcePlatformLinkV3Params {
	o.SetTicket(ticket)
	return o
}

// SetTicket adds the ticket to the public force platform link v3 params
func (o *PublicForcePlatformLinkV3Params) SetTicket(ticket string) {
	o.Ticket = ticket
}

// WithNamespace adds the namespace to the public force platform link v3 params
func (o *PublicForcePlatformLinkV3Params) WithNamespace(namespace string) *PublicForcePlatformLinkV3Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public force platform link v3 params
func (o *PublicForcePlatformLinkV3Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithPlatformID adds the platformID to the public force platform link v3 params
func (o *PublicForcePlatformLinkV3Params) WithPlatformID(platformID string) *PublicForcePlatformLinkV3Params {
	o.SetPlatformID(platformID)
	return o
}

// SetPlatformID adds the platformId to the public force platform link v3 params
func (o *PublicForcePlatformLinkV3Params) SetPlatformID(platformID string) {
	o.PlatformID = platformID
}

// WriteToRequest writes these params to a swagger request
func (o *PublicForcePlatformLinkV3Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// form param ticket
	frTicket := o.Ticket
	fTicket := frTicket
	if fTicket != "" {
		if err := r.SetFormParam("ticket", fTicket); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
