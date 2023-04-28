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

// NewDeleteItemTypeConfigParams creates a new DeleteItemTypeConfigParams object
// with the default values initialized.
func NewDeleteItemTypeConfigParams() *DeleteItemTypeConfigParams {
	var ()
	return &DeleteItemTypeConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewDeleteItemTypeConfigParamsWithTimeout creates a new DeleteItemTypeConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewDeleteItemTypeConfigParamsWithTimeout(timeout time.Duration) *DeleteItemTypeConfigParams {
	var ()
	return &DeleteItemTypeConfigParams{

		timeout: timeout,
	}
}

// NewDeleteItemTypeConfigParamsWithContext creates a new DeleteItemTypeConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewDeleteItemTypeConfigParamsWithContext(ctx context.Context) *DeleteItemTypeConfigParams {
	var ()
	return &DeleteItemTypeConfigParams{

		Context: ctx,
	}
}

// NewDeleteItemTypeConfigParamsWithHTTPClient creates a new DeleteItemTypeConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewDeleteItemTypeConfigParamsWithHTTPClient(client *http.Client) *DeleteItemTypeConfigParams {
	var ()
	return &DeleteItemTypeConfigParams{
		HTTPClient: client,
	}
}

/*DeleteItemTypeConfigParams contains all the parameters to send to the API endpoint
for the delete item type config operation typically these are written to a http.Request
*/
type DeleteItemTypeConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ID*/
	ID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the delete item type config params
func (o *DeleteItemTypeConfigParams) WithTimeout(timeout time.Duration) *DeleteItemTypeConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the delete item type config params
func (o *DeleteItemTypeConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the delete item type config params
func (o *DeleteItemTypeConfigParams) WithContext(ctx context.Context) *DeleteItemTypeConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the delete item type config params
func (o *DeleteItemTypeConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the delete item type config params
func (o *DeleteItemTypeConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the delete item type config params
func (o *DeleteItemTypeConfigParams) WithHTTPClient(client *http.Client) *DeleteItemTypeConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the delete item type config params
func (o *DeleteItemTypeConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the delete item type config params
func (o *DeleteItemTypeConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithID adds the idVar to the delete item type config params
func (o *DeleteItemTypeConfigParams) WithID(idVar string) *DeleteItemTypeConfigParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the delete item type config params
func (o *DeleteItemTypeConfigParams) SetID(idVar string) {
	o.ID = idVar
}

// WriteToRequest writes these params to a swagger request
func (o *DeleteItemTypeConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param id
	if err := r.SetPathParam("id", o.ID); err != nil {
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
