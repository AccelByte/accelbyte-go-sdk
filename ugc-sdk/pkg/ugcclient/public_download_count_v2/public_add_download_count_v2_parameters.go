// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package public_download_count_v2

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

// NewPublicAddDownloadCountV2Params creates a new PublicAddDownloadCountV2Params object
// with the default values initialized.
func NewPublicAddDownloadCountV2Params() *PublicAddDownloadCountV2Params {
	var ()
	return &PublicAddDownloadCountV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewPublicAddDownloadCountV2ParamsWithTimeout creates a new PublicAddDownloadCountV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewPublicAddDownloadCountV2ParamsWithTimeout(timeout time.Duration) *PublicAddDownloadCountV2Params {
	var ()
	return &PublicAddDownloadCountV2Params{

		timeout: timeout,
	}
}

// NewPublicAddDownloadCountV2ParamsWithContext creates a new PublicAddDownloadCountV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewPublicAddDownloadCountV2ParamsWithContext(ctx context.Context) *PublicAddDownloadCountV2Params {
	var ()
	return &PublicAddDownloadCountV2Params{

		Context: ctx,
	}
}

// NewPublicAddDownloadCountV2ParamsWithHTTPClient creates a new PublicAddDownloadCountV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewPublicAddDownloadCountV2ParamsWithHTTPClient(client *http.Client) *PublicAddDownloadCountV2Params {
	var ()
	return &PublicAddDownloadCountV2Params{
		HTTPClient: client,
	}
}

/*PublicAddDownloadCountV2Params contains all the parameters to send to the API endpoint
for the public add download count v2 operation typically these are written to a http.Request
*/
type PublicAddDownloadCountV2Params struct {

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

// WithTimeout adds the timeout to the public add download count v2 params
func (o *PublicAddDownloadCountV2Params) WithTimeout(timeout time.Duration) *PublicAddDownloadCountV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the public add download count v2 params
func (o *PublicAddDownloadCountV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the public add download count v2 params
func (o *PublicAddDownloadCountV2Params) WithContext(ctx context.Context) *PublicAddDownloadCountV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the public add download count v2 params
func (o *PublicAddDownloadCountV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the public add download count v2 params
func (o *PublicAddDownloadCountV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the public add download count v2 params
func (o *PublicAddDownloadCountV2Params) WithHTTPClient(client *http.Client) *PublicAddDownloadCountV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the public add download count v2 params
func (o *PublicAddDownloadCountV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the public add download count v2 params
func (o *PublicAddDownloadCountV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithContentID adds the contentID to the public add download count v2 params
func (o *PublicAddDownloadCountV2Params) WithContentID(contentID string) *PublicAddDownloadCountV2Params {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the public add download count v2 params
func (o *PublicAddDownloadCountV2Params) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the public add download count v2 params
func (o *PublicAddDownloadCountV2Params) WithNamespace(namespace string) *PublicAddDownloadCountV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the public add download count v2 params
func (o *PublicAddDownloadCountV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *PublicAddDownloadCountV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
