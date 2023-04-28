// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_content

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

// NewPublicDownloadContentByContentIDParams creates a new PublicDownloadContentByContentIDParams object
// with the default values initialized.
func NewPublicDownloadContentByContentIDParams() *PublicDownloadContentByContentIDParams {
	var ()
	return &PublicDownloadContentByContentIDParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicDownloadContentByContentIDParamsWithTimeout creates a new PublicDownloadContentByContentIDParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicDownloadContentByContentIDParamsWithTimeout(timeout time.Duration) *PublicDownloadContentByContentIDParams {
	var ()
	return &PublicDownloadContentByContentIDParams{

		timeout: timeout,
	}
}

// NewPublicDownloadContentByContentIDParamsWithContext creates a new PublicDownloadContentByContentIDParams object
// with the default values initialized, and the ability to set a context for a request
func NewPublicDownloadContentByContentIDParamsWithContext(ctx context.Context) *PublicDownloadContentByContentIDParams {
	var ()
	return &PublicDownloadContentByContentIDParams{

		Context: ctx,
	}
}

// NewPublicDownloadContentByContentIDParamsWithHTTPClient creates a new PublicDownloadContentByContentIDParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicDownloadContentByContentIDParamsWithHTTPClient(client *http.Client) *PublicDownloadContentByContentIDParams {
	var ()
	return &PublicDownloadContentByContentIDParams{
		HTTPClient: client,
	}
}

/*PublicDownloadContentByContentIDParams contains all the parameters to send to the API endpoint
for the public download content by content id operation typically these are written to a http.Request
*/
type PublicDownloadContentByContentIDParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ContentID
	  content ID

	*/
	ContentID string
	/*Namespace
	  namespace of the game

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the public download content by content id params
func (o *PublicDownloadContentByContentIDParams) WithTimeout(timeout time.Duration) *PublicDownloadContentByContentIDParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public download content by content id params
func (o *PublicDownloadContentByContentIDParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public download content by content id params
func (o *PublicDownloadContentByContentIDParams) WithContext(ctx context.Context) *PublicDownloadContentByContentIDParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public download content by content id params
func (o *PublicDownloadContentByContentIDParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public download content by content id params
func (o *PublicDownloadContentByContentIDParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public download content by content id params
func (o *PublicDownloadContentByContentIDParams) WithHTTPClient(client *http.Client) *PublicDownloadContentByContentIDParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public download content by content id params
func (o *PublicDownloadContentByContentIDParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public download content by content id params
func (o *PublicDownloadContentByContentIDParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithContentID adds the contentID to the public download content by content id params
func (o *PublicDownloadContentByContentIDParams) WithContentID(contentID string) *PublicDownloadContentByContentIDParams {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the public download content by content id params
func (o *PublicDownloadContentByContentIDParams) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the public download content by content id params
func (o *PublicDownloadContentByContentIDParams) WithNamespace(namespace string) *PublicDownloadContentByContentIDParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public download content by content id params
func (o *PublicDownloadContentByContentIDParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicDownloadContentByContentIDParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param contentId
	if err := r.SetPathParam("contentId", o.ContentID); err != nil {
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

	if len(res) > 0 {
		return errors.CompositeValidationError(res...)
	}

	return nil
}
