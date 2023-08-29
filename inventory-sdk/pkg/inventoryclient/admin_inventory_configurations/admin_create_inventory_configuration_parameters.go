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

// NewAdminCreateInventoryConfigurationParams creates a new AdminCreateInventoryConfigurationParams object
// with the default values initialized.
func NewAdminCreateInventoryConfigurationParams() *AdminCreateInventoryConfigurationParams {
	var ()
	return &AdminCreateInventoryConfigurationParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminCreateInventoryConfigurationParamsWithTimeout creates a new AdminCreateInventoryConfigurationParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminCreateInventoryConfigurationParamsWithTimeout(timeout time.Duration) *AdminCreateInventoryConfigurationParams {
	var ()
	return &AdminCreateInventoryConfigurationParams{

		timeout: timeout,
	}
}

// NewAdminCreateInventoryConfigurationParamsWithContext creates a new AdminCreateInventoryConfigurationParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminCreateInventoryConfigurationParamsWithContext(ctx context.Context) *AdminCreateInventoryConfigurationParams {
	var ()
	return &AdminCreateInventoryConfigurationParams{

		Context: ctx,
	}
}

// NewAdminCreateInventoryConfigurationParamsWithHTTPClient creates a new AdminCreateInventoryConfigurationParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminCreateInventoryConfigurationParamsWithHTTPClient(client *http.Client) *AdminCreateInventoryConfigurationParams {
	var ()
	return &AdminCreateInventoryConfigurationParams{
		HTTPClient: client,
	}
}

/*AdminCreateInventoryConfigurationParams contains all the parameters to send to the API endpoint
for the admin create inventory configuration operation typically these are written to a http.Request
*/
type AdminCreateInventoryConfigurationParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *inventoryclientmodels.ApimodelsCreateInventoryConfigurationReq
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin create inventory configuration params
func (o *AdminCreateInventoryConfigurationParams) WithTimeout(timeout time.Duration) *AdminCreateInventoryConfigurationParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin create inventory configuration params
func (o *AdminCreateInventoryConfigurationParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin create inventory configuration params
func (o *AdminCreateInventoryConfigurationParams) WithContext(ctx context.Context) *AdminCreateInventoryConfigurationParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin create inventory configuration params
func (o *AdminCreateInventoryConfigurationParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin create inventory configuration params
func (o *AdminCreateInventoryConfigurationParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin create inventory configuration params
func (o *AdminCreateInventoryConfigurationParams) WithHTTPClient(client *http.Client) *AdminCreateInventoryConfigurationParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin create inventory configuration params
func (o *AdminCreateInventoryConfigurationParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin create inventory configuration params
func (o *AdminCreateInventoryConfigurationParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin create inventory configuration params
func (o *AdminCreateInventoryConfigurationParams) WithBody(body *inventoryclientmodels.ApimodelsCreateInventoryConfigurationReq) *AdminCreateInventoryConfigurationParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin create inventory configuration params
func (o *AdminCreateInventoryConfigurationParams) SetBody(body *inventoryclientmodels.ApimodelsCreateInventoryConfigurationReq) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin create inventory configuration params
func (o *AdminCreateInventoryConfigurationParams) WithNamespace(namespace string) *AdminCreateInventoryConfigurationParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin create inventory configuration params
func (o *AdminCreateInventoryConfigurationParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminCreateInventoryConfigurationParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
