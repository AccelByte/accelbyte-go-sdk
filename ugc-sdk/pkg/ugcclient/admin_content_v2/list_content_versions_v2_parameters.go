// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_content_v2

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

// NewListContentVersionsV2Params creates a new ListContentVersionsV2Params object
// with the default values initialized.
func NewListContentVersionsV2Params() *ListContentVersionsV2Params {
	var ()
	return &ListContentVersionsV2Params{

		timeout: cr.DefaultTimeout,
	}
}

// NewListContentVersionsV2ParamsWithTimeout creates a new ListContentVersionsV2Params object
// with the default values initialized, and the ability to set a timeout on a request
func NewListContentVersionsV2ParamsWithTimeout(timeout time.Duration) *ListContentVersionsV2Params {
	var ()
	return &ListContentVersionsV2Params{

		timeout: timeout,
	}
}

// NewListContentVersionsV2ParamsWithContext creates a new ListContentVersionsV2Params object
// with the default values initialized, and the ability to set a context for a request
func NewListContentVersionsV2ParamsWithContext(ctx context.Context) *ListContentVersionsV2Params {
	var ()
	return &ListContentVersionsV2Params{

		Context: ctx,
	}
}

// NewListContentVersionsV2ParamsWithHTTPClient creates a new ListContentVersionsV2Params object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListContentVersionsV2ParamsWithHTTPClient(client *http.Client) *ListContentVersionsV2Params {
	var ()
	return &ListContentVersionsV2Params{
		HTTPClient: client,
	}
}

/*ListContentVersionsV2Params contains all the parameters to send to the API endpoint
for the list content versions v2 operation typically these are written to a http.Request
*/
type ListContentVersionsV2Params struct {

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

// WithTimeout adds the timeout to the list content versions v2 params
func (o *ListContentVersionsV2Params) WithTimeout(timeout time.Duration) *ListContentVersionsV2Params {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list content versions v2 params
func (o *ListContentVersionsV2Params) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list content versions v2 params
func (o *ListContentVersionsV2Params) WithContext(ctx context.Context) *ListContentVersionsV2Params {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list content versions v2 params
func (o *ListContentVersionsV2Params) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list content versions v2 params
func (o *ListContentVersionsV2Params) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list content versions v2 params
func (o *ListContentVersionsV2Params) WithHTTPClient(client *http.Client) *ListContentVersionsV2Params {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list content versions v2 params
func (o *ListContentVersionsV2Params) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list content versions v2 params
func (o *ListContentVersionsV2Params) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithContentID adds the contentID to the list content versions v2 params
func (o *ListContentVersionsV2Params) WithContentID(contentID string) *ListContentVersionsV2Params {
	o.SetContentID(contentID)
	return o
}

// SetContentID adds the contentId to the list content versions v2 params
func (o *ListContentVersionsV2Params) SetContentID(contentID string) {
	o.ContentID = contentID
}

// WithNamespace adds the namespace to the list content versions v2 params
func (o *ListContentVersionsV2Params) WithNamespace(namespace string) *ListContentVersionsV2Params {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the list content versions v2 params
func (o *ListContentVersionsV2Params) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *ListContentVersionsV2Params) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
