// Copyright (c) 2021 AccelByte Inc. All Rights Reserved.
// This is licensed software from AccelByte Inc, for limitations
// and restrictions contact your company contract manager.

// Code generated; DO NOT EDIT.

package admin_item_types

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

// NewAdminCreateItemTypeParams creates a new AdminCreateItemTypeParams object
// with the default values initialized.
func NewAdminCreateItemTypeParams() *AdminCreateItemTypeParams {
	var ()
	return &AdminCreateItemTypeParams{

		timeout: cr.DefaultTimeout,
	}
}

// NewAdminCreateItemTypeParamsWithTimeout creates a new AdminCreateItemTypeParams object
// with the default values initialized, and the ability to set a timeout on a request
func NewAdminCreateItemTypeParamsWithTimeout(timeout time.Duration) *AdminCreateItemTypeParams {
	var ()
	return &AdminCreateItemTypeParams{

		timeout: timeout,
	}
}

// NewAdminCreateItemTypeParamsWithContext creates a new AdminCreateItemTypeParams object
// with the default values initialized, and the ability to set a context for a request
func NewAdminCreateItemTypeParamsWithContext(ctx context.Context) *AdminCreateItemTypeParams {
	var ()
	return &AdminCreateItemTypeParams{

		Context: ctx,
	}
}

// NewAdminCreateItemTypeParamsWithHTTPClient creates a new AdminCreateItemTypeParams object
// with the default values initialized, and the ability to set a custom HTTPClient for a request
func NewAdminCreateItemTypeParamsWithHTTPClient(client *http.Client) *AdminCreateItemTypeParams {
	var ()
	return &AdminCreateItemTypeParams{
		HTTPClient: client,
	}
}

/*AdminCreateItemTypeParams contains all the parameters to send to the API endpoint
for the admin create item type operation typically these are written to a http.Request
*/
type AdminCreateItemTypeParams struct {

	/*RetryPolicy*/
	RetryPolicy *utils.Retry
	/*Body*/
	Body *inventoryclientmodels.ApimodelsCreateItemTypeReq
	/*Namespace
	  Namespace

	*/
	Namespace string

	timeout        time.Duration
	AuthInfoWriter runtime.ClientAuthInfoWriter
	Context        context.Context
	HTTPClient     *http.Client
}

// WithTimeout adds the timeout to the admin create item type params
func (o *AdminCreateItemTypeParams) WithTimeout(timeout time.Duration) *AdminCreateItemTypeParams {
	o.SetTimeout(timeout)
	return o
}

// SetTimeout adds the timeout to the admin create item type params
func (o *AdminCreateItemTypeParams) SetTimeout(timeout time.Duration) {
	o.timeout = timeout
}

// WithContext adds the context to the admin create item type params
func (o *AdminCreateItemTypeParams) WithContext(ctx context.Context) *AdminCreateItemTypeParams {
	o.SetContext(ctx)
	return o
}

// SetContext adds the context to the admin create item type params
func (o *AdminCreateItemTypeParams) SetContext(ctx context.Context) {
	o.Context = ctx
}

// SetAuthInfoWriter adds the authInfoWriter to the admin create item type params
func (o *AdminCreateItemTypeParams) SetAuthInfoWriter(authInfoWriter runtime.ClientAuthInfoWriter) {
	o.AuthInfoWriter = authInfoWriter
}

// WithHTTPClient adds the HTTPClient to the admin create item type params
func (o *AdminCreateItemTypeParams) WithHTTPClient(client *http.Client) *AdminCreateItemTypeParams {
	o.SetHTTPClient(client)
	return o
}

// SetHTTPClient adds the HTTPClient to the admin create item type params
func (o *AdminCreateItemTypeParams) SetHTTPClient(client *http.Client) {
	o.HTTPClient = client
}

// SetHTTPClient adds the HTTPClient Transport to the admin create item type params
func (o *AdminCreateItemTypeParams) SetHTTPClientTransport(roundTripper http.RoundTripper) {
	if o.HTTPClient != nil {
		o.HTTPClient.Transport = roundTripper
	} else {
		o.HTTPClient = &http.Client{Transport: roundTripper}
	}
}

// WithBody adds the body to the admin create item type params
func (o *AdminCreateItemTypeParams) WithBody(body *inventoryclientmodels.ApimodelsCreateItemTypeReq) *AdminCreateItemTypeParams {
	o.SetBody(body)
	return o
}

// SetBody adds the body to the admin create item type params
func (o *AdminCreateItemTypeParams) SetBody(body *inventoryclientmodels.ApimodelsCreateItemTypeReq) {
	o.Body = body
}

// WithNamespace adds the namespace to the admin create item type params
func (o *AdminCreateItemTypeParams) WithNamespace(namespace string) *AdminCreateItemTypeParams {
	o.SetNamespace(namespace)
	return o
}

// SetNamespace adds the namespace to the admin create item type params
func (o *AdminCreateItemTypeParams) SetNamespace(namespace string) {
	o.Namespace = namespace
}

// WriteToRequest writes these params to a swagger request
func (o *AdminCreateItemTypeParams) WriteToRequest(r runtime.ClientRequest, reg strfmt.Registry) error {

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
