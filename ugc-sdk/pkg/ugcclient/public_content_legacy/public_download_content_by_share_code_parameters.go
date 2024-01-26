// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content_legacy

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

// NewPublicDownloadContentByShareCodeParams creates a new PublicDownloadContentByShareCodeParams object
// with the default values initialized.
func NewPublicDownloadContentByShareCodeParams() *PublicDownloadContentByShareCodeParams {
	var ()
	return &PublicDownloadContentByShareCodeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicDownloadContentByShareCodeParamsWithTimeout creates a new PublicDownloadContentByShareCodeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicDownloadContentByShareCodeParamsWithTimeout(timeout time.Duration) *PublicDownloadContentByShareCodeParams {
	var ()
	return &PublicDownloadContentByShareCodeParams{

		timeout: timeout,
	}
}

// NewPublicDownloadContentByShareCodeParamsWithContext creates a new PublicDownloadContentByShareCodeParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicDownloadContentByShareCodeParamsWithContext(ctx context.Context) *PublicDownloadContentByShareCodeParams {
	var ()
	return &PublicDownloadContentByShareCodeParams{

		Context: ctx,
	}
}

// NewPublicDownloadContentByShareCodeParamsWithHTTPClient creates a new PublicDownloadContentByShareCodeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicDownloadContentByShareCodeParamsWithHTTPClient(client *http.Client) *PublicDownloadContentByShareCodeParams {
	var ()
	return &PublicDownloadContentByShareCodeParams{
		HTTPClient: client,
	}
}

/*PublicDownloadContentByShareCodeParams contains all the parameters to send to the API endpoint
for the public download content by share code operation typically these are written to a http.Request
*/
type PublicDownloadContentByShareCodeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Namespace
	  namespace of the game

	*/
	Namespace string
	/*ShareCode
	  content sharecode

	*/
	ShareCode string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client

	// XFlightId is an optional parameter from this SDK
	XFlightId *string
}

// WithTimeout adds the timeout to the public download content by share code params
func (o *PublicDownloadContentByShareCodeParams) WithTimeout(timeout time.Duration) *PublicDownloadContentByShareCodeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public download content by share code params
func (o *PublicDownloadContentByShareCodeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public download content by share code params
func (o *PublicDownloadContentByShareCodeParams) WithContext(ctx context.Context) *PublicDownloadContentByShareCodeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public download content by share code params
func (o *PublicDownloadContentByShareCodeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public download content by share code params
func (o *PublicDownloadContentByShareCodeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public download content by share code params
func (o *PublicDownloadContentByShareCodeParams) WithHTTPClient(client *http.Client) *PublicDownloadContentByShareCodeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public download content by share code params
func (o *PublicDownloadContentByShareCodeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public download content by share code params
func (o *PublicDownloadContentByShareCodeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// SetFlightId adds the flightId as the header value for this specific endpoint
func (o *PublicDownloadContentByShareCodeParams) SetFlightId(flightId string) {
	if o.XFlightId != nil {
		o.XFlightId = &flightId
	} else {
		o.XFlightId = &utils.GetDefaultFlightID().Value
	}
}

// WithNamespace adds the namespace to the public download content by share code params
func (o *PublicDownloadContentByShareCodeParams) WithNamespace(namespace string) *PublicDownloadContentByShareCodeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public download content by share code params
func (o *PublicDownloadContentByShareCodeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithShareCode adds the shareCode to the public download content by share code params
func (o *PublicDownloadContentByShareCodeParams) WithShareCode(shareCode string) *PublicDownloadContentByShareCodeParams {
	o.SetShareCode(shareCode)
	return o
}

// SetShareCode adds the shareCode to the public download content by share code params
func (o *PublicDownloadContentByShareCodeParams) SetShareCode(shareCode string) {
	o.ShareCode = shareCode
}

// WriteToRequest writes these params to a swagger request
func (o *PublicDownloadContentByShareCodeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// path param shareCode
	if err := r.SetPathParam("shareCode", o.ShareCode); err != nil {
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
