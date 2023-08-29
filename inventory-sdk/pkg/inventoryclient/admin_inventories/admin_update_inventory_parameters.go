// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_inventories

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

// NewAdminUpdateInventoryParams creates a new AdminUpdateInventoryParams object
// with the default values initialized.
func NewAdminUpdateInventoryParams() *AdminUpdateInventoryParams {
	var ()
	return &AdminUpdateInventoryParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminUpdateInventoryParamsWithTimeout creates a new AdminUpdateInventoryParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminUpdateInventoryParamsWithTimeout(timeout time.Duration) *AdminUpdateInventoryParams {
	var ()
	return &AdminUpdateInventoryParams{

		timeout: timeout,
	}
}

// NewAdminUpdateInventoryParamsWithContext creates a new AdminUpdateInventoryParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminUpdateInventoryParamsWithContext(ctx context.Context) *AdminUpdateInventoryParams {
	var ()
	return &AdminUpdateInventoryParams{

		Context: ctx,
	}
}

// NewAdminUpdateInventoryParamsWithHTTPClient creates a new AdminUpdateInventoryParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminUpdateInventoryParamsWithHTTPClient(client *http.Client) *AdminUpdateInventoryParams {
	var ()
	return &AdminUpdateInventoryParams{
		HTTPClient: client,
	}
}

/*AdminUpdateInventoryParams contains all the parameters to send to the API endpoint
for the admin update inventory operation typically these are written to a http.Request
*/
type AdminUpdateInventoryParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *inventoryclientmodels.ApimodelsUpdateInventoryReq
	/*InventoryID
	  InventoryID

	*/
	InventoryID string
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin update inventory params
func (o *AdminUpdateInventoryParams) WithTimeout(timeout time.Duration) *AdminUpdateInventoryParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin update inventory params
func (o *AdminUpdateInventoryParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin update inventory params
func (o *AdminUpdateInventoryParams) WithContext(ctx context.Context) *AdminUpdateInventoryParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin update inventory params
func (o *AdminUpdateInventoryParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin update inventory params
func (o *AdminUpdateInventoryParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin update inventory params
func (o *AdminUpdateInventoryParams) WithHTTPClient(client *http.Client) *AdminUpdateInventoryParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin update inventory params
func (o *AdminUpdateInventoryParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin update inventory params
func (o *AdminUpdateInventoryParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin update inventory params
func (o *AdminUpdateInventoryParams) WithBody(body *inventoryclientmodels.ApimodelsUpdateInventoryReq) *AdminUpdateInventoryParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin update inventory params
func (o *AdminUpdateInventoryParams) SetBody(body *inventoryclientmodels.ApimodelsUpdateInventoryReq) {
	o.Body = body
}

// WithInventoryID adds the inventoryID to the admin update inventory params
func (o *AdminUpdateInventoryParams) WithInventoryID(inventoryID string) *AdminUpdateInventoryParams {
	o.SetInventoryID(inventoryID)
	return o
}

// SetInventoryID adds the inventoryId to the admin update inventory params
func (o *AdminUpdateInventoryParams) SetInventoryID(inventoryID string) {
	o.InventoryID = inventoryID
}

// WithNamespace adds the namespace to the admin update inventory params
func (o *AdminUpdateInventoryParams) WithNamespace(namespace string) *AdminUpdateInventoryParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin update inventory params
func (o *AdminUpdateInventoryParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminUpdateInventoryParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

	if err := r.SetTimeout(o.timeout); err != nil {
		return err
	}
	var res []error

	if o.Body != nil {
		if err := r.SetBodyParam(o.Body); err != nil {
			return err
		}
	}

	// path param inventoryId
	if err := r.SetPathParam("inventoryId", o.InventoryID); err != nil {
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
