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

// NewGetItemTypeConfigParams creates a new GetItemTypeConfigParams object
// with the default values initialized.
func NewGetItemTypeConfigParams() *GetItemTypeConfigParams {
	var ()
	return &GetItemTypeConfigParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewGetItemTypeConfigParamsWithTimeout creates a new GetItemTypeConfigParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewGetItemTypeConfigParamsWithTimeout(timeout time.Duration) *GetItemTypeConfigParams {
	var ()
	return &GetItemTypeConfigParams{

		timeout: timeout,
	}
}

// NewGetItemTypeConfigParamsWithContext creates a new GetItemTypeConfigParams object
// with the default values initialized, and the ability to set a context for a request
func NewGetItemTypeConfigParamsWithContext(ctx context.Context) *GetItemTypeConfigParams {
	var ()
	return &GetItemTypeConfigParams{

		Context: ctx,
	}
}

// NewGetItemTypeConfigParamsWithHTTPClient creates a new GetItemTypeConfigParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewGetItemTypeConfigParamsWithHTTPClient(client *http.Client) *GetItemTypeConfigParams {
	var ()
	return &GetItemTypeConfigParams{
		HTTPClient: client,
	}
}

/*GetItemTypeConfigParams contains all the parameters to send to the API endpoint
for the get item type config operation typically these are written to a http.Request
*/
type GetItemTypeConfigParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*ID*/
	ID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the get item type config params
func (o *GetItemTypeConfigParams) WithTimeout(timeout time.Duration) *GetItemTypeConfigParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the get item type config params
func (o *GetItemTypeConfigParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the get item type config params
func (o *GetItemTypeConfigParams) WithContext(ctx context.Context) *GetItemTypeConfigParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the get item type config params
func (o *GetItemTypeConfigParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the get item type config params
func (o *GetItemTypeConfigParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the get item type config params
func (o *GetItemTypeConfigParams) WithHTTPClient(client *http.Client) *GetItemTypeConfigParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the get item type config params
func (o *GetItemTypeConfigParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the get item type config params
func (o *GetItemTypeConfigParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithID adds the idVar to the get item type config params
func (o *GetItemTypeConfigParams) WithID(idVar string) *GetItemTypeConfigParams {
	o.SetID(idVar)
	return o
}

// SetID adds the id to the get item type config params
func (o *GetItemTypeConfigParams) SetID(idVar string) {
	o.ID = idVar
}

// WriteToRequest writes these params to a swagger request
func (o *GetItemTypeConfigParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
