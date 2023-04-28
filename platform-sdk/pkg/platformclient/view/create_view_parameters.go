// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package view

import (
	"context"
	"net/http"
	"time"

	"github.com/AccelByte/accelbyte-go-sdk/services-api/pkg/utils"
	"github.com/go-openapi/errors"
	"github.com/go-openapi/runtime"
	cr "github.com/go-openapi/runtime/client"
	"github.com/go-openapi/strfmt"

	"github.com/AccelByte/accelbyte-go-sdk/platform-sdk/pkg/platformclientmodels"
)

// NewCreateViewParams creates a new CreateViewParams object
// with the default values initialized.
func NewCreateViewParams() *CreateViewParams {
	var ()
	return &CreateViewParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewCreateViewParamsWithTimeout creates a new CreateViewParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewCreateViewParamsWithTimeout(timeout time.Duration) *CreateViewParams {
	var ()
	return &CreateViewParams{

		timeout: timeout,
	}
}

// NewCreateViewParamsWithContext creates a new CreateViewParams object
// with the default values initialized, and the ability to set a context for a request
func NewCreateViewParamsWithContext(ctx context.Context) *CreateViewParams {
	var ()
	return &CreateViewParams{

		Context: ctx,
	}
}

// NewCreateViewParamsWithHTTPClient creates a new CreateViewParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewCreateViewParamsWithHTTPClient(client *http.Client) *CreateViewParams {
	var ()
	return &CreateViewParams{
		HTTPClient: client,
	}
}

/*CreateViewParams contains all the parameters to send to the API endpoint
for the create view operation typically these are written to a http.Request
*/
type CreateViewParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *platformclientmodels.ViewCreate
	/*Namespace
	  Namespace

	*/
	Namespace string
	/*StoreID*/
	StoreID string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the create view params
func (o *CreateViewParams) WithTimeout(timeout time.Duration) *CreateViewParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the create view params
func (o *CreateViewParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the create view params
func (o *CreateViewParams) WithContext(ctx context.Context) *CreateViewParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the create view params
func (o *CreateViewParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the create view params
func (o *CreateViewParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the create view params
func (o *CreateViewParams) WithHTTPClient(client *http.Client) *CreateViewParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the create view params
func (o *CreateViewParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the create view params
func (o *CreateViewParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the create view params
func (o *CreateViewParams) WithBody(body *platformclientmodels.ViewCreate) *CreateViewParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the create view params
func (o *CreateViewParams) SetBody(body *platformclientmodels.ViewCreate) {
	o.Body = body
}

// WithNamespace adds the namespace to the create view params
func (o *CreateViewParams) WithNamespace(namespace string) *CreateViewParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the create view params
func (o *CreateViewParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WithStoreID adds the storeID to the create view params
func (o *CreateViewParams) WithStoreID(storeID string) *CreateViewParams {
	o.SetStoreID(storeID)
	return o
}

// SetStoreID adds the storeId to the create view params
func (o *CreateViewParams) SetStoreID(storeID string) {
	o.StoreID = storeID
}

// WriteToRequest writes these params to a swagger request
func (o *CreateViewParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param namespace
	if err := r.SetPathParam("namespace", o.Namespace); err != nil {
		return err
	}

	// query param storeId
	qrStoreID := o.StoreID
	qStoreID := qrStoreID
	if qStoreID != "" {
		if err := r.SetQueryParam("storeId", qStoreID); err != nil {
			return err
		}
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
