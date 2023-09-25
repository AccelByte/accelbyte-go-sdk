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

// NewListContentVersionsParams creates a new ListContentVersionsParams object
// with the default values initialized.
func NewListContentVersionsParams() *ListContentVersionsParams {
	var ()
	return &ListContentVersionsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewListContentVersionsParamsWithTimeout creates a new ListContentVersionsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListContentVersionsParamsWithTimeout(timeout time.Duration) *ListContentVersionsParams {
	var ()
	return &ListContentVersionsParams{

		timeout: timeout,
	}
}

// NewListContentVersionsParamsWithContext creates a new ListContentVersionsParams object
// with the default values initialized, and the ability to set a context for a request
func NewListContentVersionsParamsWithContext(ctx context.Context) *ListContentVersionsParams {
	var ()
	return &ListContentVersionsParams{

		Context: ctx,
	}
}

// NewListContentVersionsParamsWithHTTPClient creates a new ListContentVersionsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListContentVersionsParamsWithHTTPClient(client *http.Client) *ListContentVersionsParams {
	var ()
	return &ListContentVersionsParams{
		HTTPClient: client,
	}
}

/*ListContentVersionsParams contains all the parameters to send to the API endpoint
for the list content versions operation typically these are written to a http.Request
*/
type ListContentVersionsParams struct {

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

// WithTimeout adds the timeout to the list content versions params
func (o *ListContentVersionsParams) WithTimeout(timeout time.Duration) *ListContentVersionsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list content versions params
func (o *ListContentVersionsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list content versions params
func (o *ListContentVersionsParams) WithContext(ctx context.Context) *ListContentVersionsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list content versions params
func (o *ListContentVersionsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list content versions params
func (o *ListContentVersionsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list content versions params
func (o *ListContentVersionsParams) WithHTTPClient(client *http.Client) *ListContentVersionsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list content versions params
func (o *ListContentVersionsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list content versions params
func (o *ListContentVersionsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithContentID adds the contentID to the list content versions params
func (o *ListContentVersionsParams) WithContentID(contentID string) *ListContentVersionsParams {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the list content versions params
func (o *ListContentVersionsParams) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the list content versions params
func (o *ListContentVersionsParams) WithNamespace(namespace string) *ListContentVersionsParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list content versions params
func (o *ListContentVersionsParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ListContentVersionsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
