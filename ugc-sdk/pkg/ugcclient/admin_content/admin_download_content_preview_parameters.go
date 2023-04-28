// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content

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

// NewAdminDownloadContentPreviewParams creates a new AdminDownloadContentPreviewParams object
// with the default values initialized.
func NewAdminDownloadContentPreviewParams() *AdminDownloadContentPreviewParams {
	var ()
	return &AdminDownloadContentPreviewParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminDownloadContentPreviewParamsWithTimeout creates a new AdminDownloadContentPreviewParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminDownloadContentPreviewParamsWithTimeout(timeout time.Duration) *AdminDownloadContentPreviewParams {
	var ()
	return &AdminDownloadContentPreviewParams{

		timeout: timeout,
	}
}

// NewAdminDownloadContentPreviewParamsWithContext creates a new AdminDownloadContentPreviewParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminDownloadContentPreviewParamsWithContext(ctx context.Context) *AdminDownloadContentPreviewParams {
	var ()
	return &AdminDownloadContentPreviewParams{

		Context: ctx,
	}
}

// NewAdminDownloadContentPreviewParamsWithHTTPClient creates a new AdminDownloadContentPreviewParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminDownloadContentPreviewParamsWithHTTPClient(client *http.Client) *AdminDownloadContentPreviewParams {
	var ()
	return &AdminDownloadContentPreviewParams{
		HTTPClient: client,
	}
}

/*AdminDownloadContentPreviewParams contains all the parameters to send to the API endpoint
for the admin download content preview operation typically these are written to a http.Request
*/
type AdminDownloadContentPreviewParams struct {

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

// WithTimeout adds the timeout to the admin download content preview params
func (o *AdminDownloadContentPreviewParams) WithTimeout(timeout time.Duration) *AdminDownloadContentPreviewParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin download content preview params
func (o *AdminDownloadContentPreviewParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin download content preview params
func (o *AdminDownloadContentPreviewParams) WithContext(ctx context.Context) *AdminDownloadContentPreviewParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin download content preview params
func (o *AdminDownloadContentPreviewParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin download content preview params
func (o *AdminDownloadContentPreviewParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin download content preview params
func (o *AdminDownloadContentPreviewParams) WithHTTPClient(client *http.Client) *AdminDownloadContentPreviewParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin download content preview params
func (o *AdminDownloadContentPreviewParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin download content preview params
func (o *AdminDownloadContentPreviewParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithContentID adds the contentID to the admin download content preview params
func (o *AdminDownloadContentPreviewParams) WithContentID(contentID string) *AdminDownloadContentPreviewParams {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the admin download content preview params
func (o *AdminDownloadContentPreviewParams) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the admin download content preview params
func (o *AdminDownloadContentPreviewParams) WithNamespace(namespace string) *AdminDownloadContentPreviewParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin download content preview params
func (o *AdminDownloadContentPreviewParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminDownloadContentPreviewParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
