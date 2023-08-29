// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_inventory_configurations

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

// NewAdminGetInventoryConfigurationParams creates a new AdminGetInventoryConfigurationParams object
// with the default values initialized.
func NewAdminGetInventoryConfigurationParams() *AdminGetInventoryConfigurationParams {
	var ()
	return &AdminGetInventoryConfigurationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminGetInventoryConfigurationParamsWithTimeout creates a new AdminGetInventoryConfigurationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminGetInventoryConfigurationParamsWithTimeout(timeout time.Duration) *AdminGetInventoryConfigurationParams {
	var ()
	return &AdminGetInventoryConfigurationParams{

		timeout: timeout,
	}
}

// NewAdminGetInventoryConfigurationParamsWithContext creates a new AdminGetInventoryConfigurationParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminGetInventoryConfigurationParamsWithContext(ctx context.Context) *AdminGetInventoryConfigurationParams {
	var ()
	return &AdminGetInventoryConfigurationParams{

		Context: ctx,
	}
}

// NewAdminGetInventoryConfigurationParamsWithHTTPClient creates a new AdminGetInventoryConfigurationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminGetInventoryConfigurationParamsWithHTTPClient(client *http.Client) *AdminGetInventoryConfigurationParams {
	var ()
	return &AdminGetInventoryConfigurationParams{
		HTTPClient: client,
	}
}

/*AdminGetInventoryConfigurationParams contains all the parameters to send to the API endpoint
for the admin get inventory configuration operation typically these are written to a http.Request
*/
type AdminGetInventoryConfigurationParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*InventoryConfigurationID
	  InventoryConfigurationID

	*/
	InventoryConfigurationID string
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin get inventory configuration params
func (o *AdminGetInventoryConfigurationParams) WithTimeout(timeout time.Duration) *AdminGetInventoryConfigurationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin get inventory configuration params
func (o *AdminGetInventoryConfigurationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin get inventory configuration params
func (o *AdminGetInventoryConfigurationParams) WithContext(ctx context.Context) *AdminGetInventoryConfigurationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin get inventory configuration params
func (o *AdminGetInventoryConfigurationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin get inventory configuration params
func (o *AdminGetInventoryConfigurationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin get inventory configuration params
func (o *AdminGetInventoryConfigurationParams) WithHTTPClient(client *http.Client) *AdminGetInventoryConfigurationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin get inventory configuration params
func (o *AdminGetInventoryConfigurationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin get inventory configuration params
func (o *AdminGetInventoryConfigurationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithInventoryConfigurationID adds the inventoryConfigurationID to the admin get inventory configuration params
func (o *AdminGetInventoryConfigurationParams) WithInventoryConfigurationID(inventoryConfigurationID string) *AdminGetInventoryConfigurationParams {
	o.SetInventoryConfigurationID(inventoryConfigurationID)
	return o
}

// SetInventoryConfigurationID adds the inventoryConfigurationId to the admin get inventory configuration params
func (o *AdminGetInventoryConfigurationParams) SetInventoryConfigurationID(inventoryConfigurationID string) {
	o.InventoryConfigurationID = inventoryConfigurationID
}

// WithNamespace adds the namespace to the admin get inventory configuration params
func (o *AdminGetInventoryConfigurationParams) WithNamespace(namespace string) *AdminGetInventoryConfigurationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin get inventory configuration params
func (o *AdminGetInventoryConfigurationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminGetInventoryConfigurationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	// path param inventoryConfigurationId
	if err := r.SetPathParam("inventoryConfigurationId", o.InventoryConfigurationID); err != nil {
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
