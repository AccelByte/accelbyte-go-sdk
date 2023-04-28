// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package item

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

// NewListItemTypeConfigsParams creates a new ListItemTypeConfigsParams object
// with the default values initialized.
func NewListItemTypeConfigsParams() *ListItemTypeConfigsParams {
	var ()
	return &ListItemTypeConfigsParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewListItemTypeConfigsParamsWithTimeout creates a new ListItemTypeConfigsParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewListItemTypeConfigsParamsWithTimeout(timeout time.Duration) *ListItemTypeConfigsParams {
	var ()
	return &ListItemTypeConfigsParams{

		timeout: timeout,
	}
}

// NewListItemTypeConfigsParamsWithContext creates a new ListItemTypeConfigsParams object
// with the default values initialized, and the ability to set a context for a request
func NewListItemTypeConfigsParamsWithContext(ctx context.Context) *ListItemTypeConfigsParams {
	var ()
	return &ListItemTypeConfigsParams{

		Context: ctx,
	}
}

// NewListItemTypeConfigsParamsWithHTTPClient creates a new ListItemTypeConfigsParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewListItemTypeConfigsParamsWithHTTPClient(client *http.Client) *ListItemTypeConfigsParams {
	var ()
	return &ListItemTypeConfigsParams{
		HTTPClient: client,
	}
}

/*ListItemTypeConfigsParams contains all the parameters to send to the API endpoint
for the list item type configs operation typically these are written to a http.Request
*/
type ListItemTypeConfigsParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the list item type configs params
func (o *ListItemTypeConfigsParams) WithTimeout(timeout time.Duration) *ListItemTypeConfigsParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the list item type configs params
func (o *ListItemTypeConfigsParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the list item type configs params
func (o *ListItemTypeConfigsParams) WithContext(ctx context.Context) *ListItemTypeConfigsParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the list item type configs params
func (o *ListItemTypeConfigsParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the list item type configs params
func (o *ListItemTypeConfigsParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the list item type configs params
func (o *ListItemTypeConfigsParams) WithHTTPClient(client *http.Client) *ListItemTypeConfigsParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the list item type configs params
func (o *ListItemTypeConfigsParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the list item type configs params
func (o *ListItemTypeConfigsParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WriteToRequest writes these params to a swagger request
func (o *ListItemTypeConfigsParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

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
