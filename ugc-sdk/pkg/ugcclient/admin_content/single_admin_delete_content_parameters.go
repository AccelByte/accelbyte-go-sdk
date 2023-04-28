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

// NewSingleAdminDeleteContentParams creates a new SingleAdminDeleteContentParams object
// with the default values initialized.
func NewSingleAdminDeleteContentParams() *SingleAdminDeleteContentParams {
	var ()
	return &SingleAdminDeleteContentParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewSingleAdminDeleteContentParamsWithTimeout creates a new SingleAdminDeleteContentParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewSingleAdminDeleteContentParamsWithTimeout(timeout time.Duration) *SingleAdminDeleteContentParams {
	var ()
	return &SingleAdminDeleteContentParams{

		timeout: timeout,
	}
}

// NewSingleAdminDeleteContentParamsWithContext creates a new SingleAdminDeleteContentParams object
// with the default values initialized, and the ability to set a context for a request
func NewSingleAdminDeleteContentParamsWithContext(ctx context.Context) *SingleAdminDeleteContentParams {
	var ()
	return &SingleAdminDeleteContentParams{

		Context: ctx,
	}
}

// NewSingleAdminDeleteContentParamsWithHTTPClient creates a new SingleAdminDeleteContentParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewSingleAdminDeleteContentParamsWithHTTPClient(client *http.Client) *SingleAdminDeleteContentParams {
	var ()
	return &SingleAdminDeleteContentParams{
		HTTPClient: client,
	}
}

/*SingleAdminDeleteContentParams contains all the parameters to send to the API endpoint
for the single admin delete content operation typically these are written to a http.Request
*/
type SingleAdminDeleteContentParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ChannelID
	  channel ID

	*/
	ChannelID string
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

// WithTimeout adds the timeout to the single admin delete content params
func (o *SingleAdminDeleteContentParams) WithTimeout(timeout time.Duration) *SingleAdminDeleteContentParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the single admin delete content params
func (o *SingleAdminDeleteContentParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the single admin delete content params
func (o *SingleAdminDeleteContentParams) WithContext(ctx context.Context) *SingleAdminDeleteContentParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the single admin delete content params
func (o *SingleAdminDeleteContentParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the single admin delete content params
func (o *SingleAdminDeleteContentParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the single admin delete content params
func (o *SingleAdminDeleteContentParams) WithHTTPClient(client *http.Client) *SingleAdminDeleteContentParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the single admin delete content params
func (o *SingleAdminDeleteContentParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the single admin delete content params
func (o *SingleAdminDeleteContentParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithChannelID adds the channelID to the single admin delete content params
func (o *SingleAdminDeleteContentParams) WithChannelID(channelID string) *SingleAdminDeleteContentParams {
	o.SetChannelID(channelID)
	return o
}

// SetChannelID adds the channelId to the single admin delete content params
func (o *SingleAdminDeleteContentParams) SetChannelID(channelID string) {
	o.ChannelID = channelID
}

// WithContentID adds the contentID to the single admin delete content params
func (o *SingleAdminDeleteContentParams) WithContentID(contentID string) *SingleAdminDeleteContentParams {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the single admin delete content params
func (o *SingleAdminDeleteContentParams) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the single admin delete content params
func (o *SingleAdminDeleteContentParams) WithNamespace(namespace string) *SingleAdminDeleteContentParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the single admin delete content params
func (o *SingleAdminDeleteContentParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *SingleAdminDeleteContentParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param channelId
	if err := r.SetPathParam("channelId", o.ChannelID); err != nil {
		return err
	}

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
