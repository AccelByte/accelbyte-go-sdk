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

	"github.com/AccelByte/accelbyte-go-sdk/inventory-sdk/pkg/inventoryclientmodels"
)

// NewAdminUpdateInventoryConfigurationParams creates a new AdminUpdateInventoryConfigurationParams object
// with the default values initialized.
func NewAdminUpdateInventoryConfigurationParams() *AdminUpdateInventoryConfigurationParams {
	var ()
	return &AdminUpdateInventoryConfigurationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateInventoryConfigurationParamsWithTimeout creates a new AdminUpdateInventoryConfigurationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateInventoryConfigurationParamsWithTimeout(timeout time.Duration) *AdminUpdateInventoryConfigurationParams {
	var ()
	return &AdminUpdateInventoryConfigurationParams{

		timeout: timeout,
	}
}

// NewAdminUpdateInventoryConfigurationParamsWithContext creates a new AdminUpdateInventoryConfigurationParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateInventoryConfigurationParamsWithContext(ctx context.Context) *AdminUpdateInventoryConfigurationParams {
	var ()
	return &AdminUpdateInventoryConfigurationParams{

		Context: ctx,
	}
}

// NewAdminUpdateInventoryConfigurationParamsWithHTTPClient creates a new AdminUpdateInventoryConfigurationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateInventoryConfigurationParamsWithHTTPClient(client *http.Client) *AdminUpdateInventoryConfigurationParams {
	var ()
	return &AdminUpdateInventoryConfigurationParams{
		HTTPClient: client,
	}
}

/*AdminUpdateInventoryConfigurationParams contains all the parameters to send to the API endpoint
for the admin update inventory configuration operation typically these are written to a http.Request
*/
type AdminUpdateInventoryConfigurationParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *inventoryclientmodels.ApimodelsInventoryConfigurationReq
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

// WithTimeout adds the timeout to the admin update inventory configuration params
func (o *AdminUpdateInventoryConfigurationParams) WithTimeout(timeout time.Duration) *AdminUpdateInventoryConfigurationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update inventory configuration params
func (o *AdminUpdateInventoryConfigurationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update inventory configuration params
func (o *AdminUpdateInventoryConfigurationParams) WithContext(ctx context.Context) *AdminUpdateInventoryConfigurationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update inventory configuration params
func (o *AdminUpdateInventoryConfigurationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update inventory configuration params
func (o *AdminUpdateInventoryConfigurationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update inventory configuration params
func (o *AdminUpdateInventoryConfigurationParams) WithHTTPClient(client *http.Client) *AdminUpdateInventoryConfigurationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update inventory configuration params
func (o *AdminUpdateInventoryConfigurationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update inventory configuration params
func (o *AdminUpdateInventoryConfigurationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update inventory configuration params
func (o *AdminUpdateInventoryConfigurationParams) WithBody(body *inventoryclientmodels.ApimodelsInventoryConfigurationReq) *AdminUpdateInventoryConfigurationParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update inventory configuration params
func (o *AdminUpdateInventoryConfigurationParams) SetBody(body *inventoryclientmodels.ApimodelsInventoryConfigurationReq) {
	o.Body = body
}

// WithInventoryConfigurationID adds the inventoryConfigurationID to the admin update inventory configuration params
func (o *AdminUpdateInventoryConfigurationParams) WithInventoryConfigurationID(inventoryConfigurationID string) *AdminUpdateInventoryConfigurationParams {
	o.SetInventoryConfigurationID(inventoryConfigurationID)
	return o
}

// SetInventoryConfigurationID adds the inventoryConfigurationId to the admin update inventory configuration params
func (o *AdminUpdateInventoryConfigurationParams) SetInventoryConfigurationID(inventoryConfigurationID string) {
	o.InventoryConfigurationID = inventoryConfigurationID
}

// WithNamespace adds the namespace to the admin update inventory configuration params
func (o *AdminUpdateInventoryConfigurationParams) WithNamespace(namespace string) *AdminUpdateInventoryConfigurationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update inventory configuration params
func (o *AdminUpdateInventoryConfigurationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateInventoryConfigurationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

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
